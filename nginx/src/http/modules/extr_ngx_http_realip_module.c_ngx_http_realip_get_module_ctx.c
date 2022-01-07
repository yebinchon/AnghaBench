
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ handler; int * data; struct TYPE_7__* next; } ;
typedef TYPE_2__ ngx_pool_cleanup_t ;
struct TYPE_8__ {TYPE_1__* pool; scalar_t__ filter_finalize; scalar_t__ internal; } ;
typedef TYPE_3__ ngx_http_request_t ;
typedef int ngx_http_realip_ctx_t ;
struct TYPE_6__ {TYPE_2__* cleanup; } ;


 int * ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 scalar_t__ ngx_http_realip_cleanup ;
 int ngx_http_realip_module ;

__attribute__((used)) static ngx_http_realip_ctx_t *
ngx_http_realip_get_module_ctx(ngx_http_request_t *r)
{
    ngx_pool_cleanup_t *cln;
    ngx_http_realip_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_realip_module);

    if (ctx == ((void*)0) && (r->internal || r->filter_finalize)) {






        for (cln = r->pool->cleanup; cln; cln = cln->next) {
            if (cln->handler == ngx_http_realip_cleanup) {
                ctx = cln->data;
                break;
            }
        }
    }

    return ctx;
}
