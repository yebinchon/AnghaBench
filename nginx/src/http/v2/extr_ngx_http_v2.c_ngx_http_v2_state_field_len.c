
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_20__ {size_t max_field_size; } ;
typedef TYPE_4__ ngx_http_v2_srv_conf_t ;
struct TYPE_19__ {int flags; int length; int field_rest; int * field_start; int * field_end; int pool; int index; int * stream; } ;
struct TYPE_21__ {TYPE_3__ state; TYPE_2__* connection; TYPE_1__* http_connection; } ;
typedef TYPE_5__ ngx_http_v2_connection_t ;
struct TYPE_18__ {int log; } ;
struct TYPE_17__ {int conf_ctx; } ;


 int NGX_AGAIN ;
 int NGX_DECLINED ;
 int NGX_HTTP_V2_COMP_ERROR ;
 int NGX_HTTP_V2_END_HEADERS_FLAG ;
 int NGX_HTTP_V2_ENHANCE_YOUR_CALM ;
 int NGX_HTTP_V2_INTERNAL_ERROR ;
 int NGX_HTTP_V2_INT_OCTETS ;
 int NGX_HTTP_V2_SIZE_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 TYPE_4__* ngx_http_get_module_srv_conf (int ,int ) ;
 int* ngx_http_v2_connection_error (TYPE_5__*,int ) ;
 int* ngx_http_v2_handle_continuation (TYPE_5__*,int*,int*,int* (*) (TYPE_5__*,int*,int*)) ;
 int ngx_http_v2_module ;
 int ngx_http_v2_parse_int (TYPE_5__*,int**,int*,int ) ;
 int ngx_http_v2_prefix (int) ;
 int* ngx_http_v2_state_field_huff (TYPE_5__*,int*,int*) ;
 int* ngx_http_v2_state_field_raw (TYPE_5__*,int*,int*) ;
 int* ngx_http_v2_state_field_skip (TYPE_5__*,int*,int*) ;
 int* ngx_http_v2_state_headers_save (TYPE_5__*,int*,int*,int* (*) (TYPE_5__*,int*,int*)) ;
 int ngx_log_debug2 (int ,int ,int ,char*,char*,int) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int * ngx_pnalloc (int ,size_t) ;

__attribute__((used)) static u_char *
ngx_http_v2_state_field_len(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
    size_t alloc;
    ngx_int_t len;
    ngx_uint_t huff;
    ngx_http_v2_srv_conf_t *h2scf;

    if (!(h2c->state.flags & NGX_HTTP_V2_END_HEADERS_FLAG)
        && h2c->state.length < NGX_HTTP_V2_INT_OCTETS)
    {
        return ngx_http_v2_handle_continuation(h2c, pos, end,
                                               ngx_http_v2_state_field_len);
    }

    if (h2c->state.length < 1) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent header block with incorrect length");

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_SIZE_ERROR);
    }

    if (end - pos < 1) {
        return ngx_http_v2_state_headers_save(h2c, pos, end,
                                              ngx_http_v2_state_field_len);
    }

    huff = *pos >> 7;
    len = ngx_http_v2_parse_int(h2c, &pos, end, ngx_http_v2_prefix(7));

    if (len < 0) {
        if (len == NGX_AGAIN) {
            return ngx_http_v2_state_headers_save(h2c, pos, end,
                                                  ngx_http_v2_state_field_len);
        }

        if (len == NGX_DECLINED) {
            ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                        "client sent header field with too long length value");

            return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_COMP_ERROR);
        }

        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent header block with incorrect length");

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_SIZE_ERROR);
    }

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 %s string, len:%i",
                   huff ? "encoded" : "raw", len);

    h2scf = ngx_http_get_module_srv_conf(h2c->http_connection->conf_ctx,
                                         ngx_http_v2_module);

    if ((size_t) len > h2scf->max_field_size) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client exceeded http2_max_field_size limit");

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_ENHANCE_YOUR_CALM);
    }

    h2c->state.field_rest = len;

    if (h2c->state.stream == ((void*)0) && !h2c->state.index) {
        return ngx_http_v2_state_field_skip(h2c, pos, end);
    }

    alloc = (huff ? len * 8 / 5 : len) + 1;

    h2c->state.field_start = ngx_pnalloc(h2c->state.pool, alloc);
    if (h2c->state.field_start == ((void*)0)) {
        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_INTERNAL_ERROR);
    }

    h2c->state.field_end = h2c->state.field_start;

    if (huff) {
        return ngx_http_v2_state_field_huff(h2c, pos, end);
    }

    return ngx_http_v2_state_field_raw(h2c, pos, end);
}
