
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef char u_char ;
typedef size_t ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_18__ {int len; size_t data; } ;
struct TYPE_14__ {int len; size_t data; } ;
struct TYPE_20__ {TYPE_6__ value; TYPE_2__ name; } ;
typedef TYPE_8__ ngx_http_v2_header_t ;
struct TYPE_17__ {size_t added; size_t deleted; size_t allocated; size_t storage; TYPE_8__** entries; } ;
struct TYPE_15__ {int len; char* data; } ;
struct TYPE_13__ {int len; char* data; } ;
struct TYPE_12__ {TYPE_3__ value; TYPE_1__ name; } ;
struct TYPE_16__ {TYPE_10__ header; int pool; } ;
struct TYPE_21__ {TYPE_7__* connection; TYPE_5__ hpack; TYPE_4__ state; } ;
typedef TYPE_9__ ngx_http_v2_connection_t ;
struct TYPE_19__ {int log; } ;


 int NGX_ERROR ;
 size_t NGX_HTTP_V2_STATIC_TABLE_ENTRIES ;
 size_t NGX_HTTP_V2_TABLE_SIZE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 int NGX_OK ;
 char* ngx_cpymem (char*,size_t,size_t) ;
 TYPE_10__* ngx_http_v2_static_table ;
 int ngx_log_debug2 (int ,int ,int ,char*,char*,size_t) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 char* ngx_pnalloc (int ,int) ;

ngx_int_t
ngx_http_v2_get_indexed_header(ngx_http_v2_connection_t *h2c, ngx_uint_t index,
    ngx_uint_t name_only)
{
    u_char *p;
    size_t rest;
    ngx_http_v2_header_t *entry;

    if (index == 0) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent invalid hpack table index 0");
        return NGX_ERROR;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 get indexed %s: %ui",
                   name_only ? "name" : "header", index);

    index--;

    if (index < NGX_HTTP_V2_STATIC_TABLE_ENTRIES) {
        h2c->state.header = ngx_http_v2_static_table[index];
        return NGX_OK;
    }

    index -= NGX_HTTP_V2_STATIC_TABLE_ENTRIES;

    if (index < h2c->hpack.added - h2c->hpack.deleted) {
        index = (h2c->hpack.added - index - 1) % h2c->hpack.allocated;
        entry = h2c->hpack.entries[index];

        p = ngx_pnalloc(h2c->state.pool, entry->name.len + 1);
        if (p == ((void*)0)) {
            return NGX_ERROR;
        }

        h2c->state.header.name.len = entry->name.len;
        h2c->state.header.name.data = p;

        rest = h2c->hpack.storage + NGX_HTTP_V2_TABLE_SIZE - entry->name.data;

        if (entry->name.len > rest) {
            p = ngx_cpymem(p, entry->name.data, rest);
            p = ngx_cpymem(p, h2c->hpack.storage, entry->name.len - rest);

        } else {
            p = ngx_cpymem(p, entry->name.data, entry->name.len);
        }

        *p = '\0';

        if (name_only) {
            return NGX_OK;
        }

        p = ngx_pnalloc(h2c->state.pool, entry->value.len + 1);
        if (p == ((void*)0)) {
            return NGX_ERROR;
        }

        h2c->state.header.value.len = entry->value.len;
        h2c->state.header.value.data = p;

        rest = h2c->hpack.storage + NGX_HTTP_V2_TABLE_SIZE - entry->value.data;

        if (entry->value.len > rest) {
            p = ngx_cpymem(p, entry->value.data, rest);
            p = ngx_cpymem(p, h2c->hpack.storage, entry->value.len - rest);

        } else {
            p = ngx_cpymem(p, entry->value.data, entry->value.len);
        }

        *p = '\0';

        return NGX_OK;
    }

    ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                  "client sent out of bound hpack table index: %ui", index);

    return NGX_ERROR;
}
