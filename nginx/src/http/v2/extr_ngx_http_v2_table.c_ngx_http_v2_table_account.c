
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


typedef int ngx_int_t ;
struct TYPE_10__ {scalar_t__ len; } ;
struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_12__ {TYPE_3__ value; TYPE_2__ name; } ;
typedef TYPE_5__ ngx_http_v2_header_t ;
struct TYPE_11__ {size_t free; size_t size; size_t allocated; int deleted; TYPE_5__** entries; int added; } ;
struct TYPE_13__ {TYPE_4__ hpack; TYPE_1__* connection; } ;
typedef TYPE_6__ ngx_http_v2_connection_t ;
struct TYPE_8__ {int log; } ;


 int NGX_DECLINED ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_log_debug2 (int ,int ,int ,char*,size_t,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_http_v2_table_account(ngx_http_v2_connection_t *h2c, size_t size)
{
    ngx_http_v2_header_t *entry;

    size += 32;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 table account: %uz free:%uz",
                   size, h2c->hpack.free);

    if (size <= h2c->hpack.free) {
        h2c->hpack.free -= size;
        return NGX_OK;
    }

    if (size > h2c->hpack.size) {
        h2c->hpack.deleted = h2c->hpack.added;
        h2c->hpack.free = h2c->hpack.size;
        return NGX_DECLINED;
    }

    do {
        entry = h2c->hpack.entries[h2c->hpack.deleted++ % h2c->hpack.allocated];
        h2c->hpack.free += 32 + entry->name.len + entry->value.len;
    } while (size > h2c->hpack.free);

    h2c->hpack.free -= size;

    return NGX_OK;
}
