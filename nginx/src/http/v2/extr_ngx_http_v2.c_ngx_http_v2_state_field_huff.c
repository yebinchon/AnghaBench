
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_11__ {size_t field_rest; size_t length; char* field_end; int flags; int field_state; } ;
struct TYPE_13__ {TYPE_2__* connection; TYPE_1__ state; } ;
typedef TYPE_3__ ngx_http_v2_connection_t ;
struct TYPE_12__ {int log; } ;


 int NGX_HTTP_V2_COMP_ERROR ;
 int NGX_HTTP_V2_END_HEADERS_FLAG ;
 int NGX_HTTP_V2_SIZE_ERROR ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int * ngx_http_v2_connection_error (TYPE_3__*,int ) ;
 int * ngx_http_v2_handle_continuation (TYPE_3__*,int *,int *,int * (*) (TYPE_3__*,int *,int *)) ;
 scalar_t__ ngx_http_v2_huff_decode (int *,int *,size_t,char**,int,int ) ;
 int * ngx_http_v2_state_headers_save (TYPE_3__*,int *,int *,int * (*) (TYPE_3__*,int *,int *)) ;
 int * ngx_http_v2_state_process_header (TYPE_3__*,int *,int *) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static u_char *
ngx_http_v2_state_field_huff(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
    size_t size;

    size = end - pos;

    if (size > h2c->state.field_rest) {
        size = h2c->state.field_rest;
    }

    if (size > h2c->state.length) {
        size = h2c->state.length;
    }

    h2c->state.length -= size;
    h2c->state.field_rest -= size;

    if (ngx_http_v2_huff_decode(&h2c->state.field_state, pos, size,
                                &h2c->state.field_end,
                                h2c->state.field_rest == 0,
                                h2c->connection->log)
        != NGX_OK)
    {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent invalid encoded header field");

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_COMP_ERROR);
    }

    pos += size;

    if (h2c->state.field_rest == 0) {
        *h2c->state.field_end = '\0';
        return ngx_http_v2_state_process_header(h2c, pos, end);
    }

    if (h2c->state.length) {
        return ngx_http_v2_state_headers_save(h2c, pos, end,
                                              ngx_http_v2_state_field_huff);
    }

    if (h2c->state.flags & NGX_HTTP_V2_END_HEADERS_FLAG) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent header field with incorrect length");

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_SIZE_ERROR);
    }

    return ngx_http_v2_handle_continuation(h2c, pos, end,
                                           ngx_http_v2_state_field_huff);
}
