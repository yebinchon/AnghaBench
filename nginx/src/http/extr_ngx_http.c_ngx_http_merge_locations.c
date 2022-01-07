
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_queue_t ;
struct TYPE_9__ {char* (* merge_loc_conf ) (TYPE_5__*,void*,void*) ;} ;
typedef TYPE_1__ ngx_http_module_t ;
struct TYPE_10__ {TYPE_3__* inclusive; TYPE_3__* exact; } ;
typedef TYPE_2__ ngx_http_location_queue_t ;
struct TYPE_11__ {void** loc_conf; int * locations; } ;
typedef TYPE_3__ ngx_http_core_loc_conf_t ;
struct TYPE_12__ {void** loc_conf; } ;
typedef TYPE_4__ ngx_http_conf_ctx_t ;
struct TYPE_13__ {scalar_t__ ctx; } ;
typedef TYPE_5__ ngx_conf_t ;


 char* NGX_CONF_OK ;
 int * ngx_queue_head (int *) ;
 int * ngx_queue_next (int *) ;
 int * ngx_queue_sentinel (int *) ;
 char* stub1 (TYPE_5__*,void*,void*) ;

__attribute__((used)) static char *
ngx_http_merge_locations(ngx_conf_t *cf, ngx_queue_t *locations,
    void **loc_conf, ngx_http_module_t *module, ngx_uint_t ctx_index)
{
    char *rv;
    ngx_queue_t *q;
    ngx_http_conf_ctx_t *ctx, saved;
    ngx_http_core_loc_conf_t *clcf;
    ngx_http_location_queue_t *lq;

    if (locations == ((void*)0)) {
        return NGX_CONF_OK;
    }

    ctx = (ngx_http_conf_ctx_t *) cf->ctx;
    saved = *ctx;

    for (q = ngx_queue_head(locations);
         q != ngx_queue_sentinel(locations);
         q = ngx_queue_next(q))
    {
        lq = (ngx_http_location_queue_t *) q;

        clcf = lq->exact ? lq->exact : lq->inclusive;
        ctx->loc_conf = clcf->loc_conf;

        rv = module->merge_loc_conf(cf, loc_conf[ctx_index],
                                    clcf->loc_conf[ctx_index]);
        if (rv != NGX_CONF_OK) {
            return rv;
        }

        rv = ngx_http_merge_locations(cf, clcf->locations, clcf->loc_conf,
                                      module, ctx_index);
        if (rv != NGX_CONF_OK) {
            return rv;
        }
    }

    *ctx = saved;

    return NGX_CONF_OK;
}
