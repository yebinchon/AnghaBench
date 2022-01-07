
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_21__ {TYPE_2__* connection; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_22__ {int path; TYPE_4__* shpool; } ;
typedef TYPE_8__ ngx_http_file_cache_t ;
struct TYPE_19__ {scalar_t__ len; } ;
struct TYPE_20__ {TYPE_5__ name; } ;
struct TYPE_15__ {scalar_t__ len; } ;
struct TYPE_23__ {int main; int key; TYPE_6__ file; TYPE_3__* node; TYPE_8__* file_cache; int variant; TYPE_1__ vary; int secondary; } ;
typedef TYPE_9__ ngx_http_cache_t ;
struct TYPE_18__ {int mutex; } ;
struct TYPE_17__ {scalar_t__ updating; int count; } ;
struct TYPE_16__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_CACHE_KEY_LEN ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_file_cache_exists (TYPE_8__*,TYPE_9__*) ;
 scalar_t__ ngx_http_file_cache_name (TYPE_7__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 scalar_t__ ngx_memcmp (int ,int ,int ) ;
 int ngx_memcpy (int ,int ,int ) ;
 int ngx_shmtx_lock (int *) ;
 int ngx_shmtx_unlock (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_file_cache_update_variant(ngx_http_request_t *r, ngx_http_cache_t *c)
{
    ngx_http_file_cache_t *cache;

    if (!c->secondary) {
        return NGX_OK;
    }

    if (c->vary.len
        && ngx_memcmp(c->variant, c->key, NGX_HTTP_CACHE_KEY_LEN) == 0)
    {
        return NGX_OK;
    }






    cache = c->file_cache;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http file cache main key");

    ngx_shmtx_lock(&cache->shpool->mutex);

    c->node->count--;
    c->node->updating = 0;
    c->node = ((void*)0);

    ngx_shmtx_unlock(&cache->shpool->mutex);

    c->file.name.len = 0;

    ngx_memcpy(c->key, c->main, NGX_HTTP_CACHE_KEY_LEN);

    if (ngx_http_file_cache_exists(cache, c) == NGX_ERROR) {
        return NGX_ERROR;
    }

    if (ngx_http_file_cache_name(r, cache->path) != NGX_OK) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
