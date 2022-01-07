
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {scalar_t__ len; } ;
struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_12__ {TYPE_3__ value; TYPE_2__ name; } ;
typedef TYPE_5__ ngx_http_v2_header_t ;
struct TYPE_11__ {size_t size; scalar_t__ free; size_t allocated; int deleted; TYPE_5__** entries; } ;
struct TYPE_13__ {TYPE_4__ hpack; TYPE_1__* connection; } ;
typedef TYPE_6__ ngx_http_v2_connection_t ;
struct TYPE_8__ {int log; } ;


 int NGX_ERROR ;
 size_t NGX_HTTP_V2_TABLE_SIZE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 int NGX_OK ;
 int ngx_log_debug2 (int ,int ,int ,char*,size_t,size_t) ;
 int ngx_log_error (int ,int ,int ,char*,size_t) ;

ngx_int_t
ngx_http_v2_table_size(ngx_http_v2_connection_t *h2c, size_t size)
{
    ssize_t needed;
    ngx_http_v2_header_t *entry;

    if (size > NGX_HTTP_V2_TABLE_SIZE) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent invalid table size update: %uz", size);

        return NGX_ERROR;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 new hpack table size: %uz was:%uz",
                   size, h2c->hpack.size);

    needed = h2c->hpack.size - size;

    while (needed > (ssize_t) h2c->hpack.free) {
        entry = h2c->hpack.entries[h2c->hpack.deleted++ % h2c->hpack.allocated];
        h2c->hpack.free += 32 + entry->name.len + entry->value.len;
    }

    h2c->hpack.size = size;
    h2c->hpack.free -= needed;

    return NGX_OK;
}
