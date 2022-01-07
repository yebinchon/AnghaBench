
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_queue_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_4__ {TYPE_2__* inclusive; TYPE_2__* exact; } ;
typedef TYPE_1__ ngx_http_location_queue_t ;
struct TYPE_5__ {int * static_locations; int * locations; } ;
typedef TYPE_2__ ngx_http_core_loc_conf_t ;
typedef int ngx_conf_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int ngx_http_create_locations_list (int *,int *) ;
 int * ngx_http_create_locations_tree (int *,int *,int ) ;
 scalar_t__ ngx_http_join_exact_locations (int *,int *) ;
 scalar_t__ ngx_queue_empty (int *) ;
 int * ngx_queue_head (int *) ;
 int * ngx_queue_next (int *) ;
 int * ngx_queue_sentinel (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_init_static_location_trees(ngx_conf_t *cf,
    ngx_http_core_loc_conf_t *pclcf)
{
    ngx_queue_t *q, *locations;
    ngx_http_core_loc_conf_t *clcf;
    ngx_http_location_queue_t *lq;

    locations = pclcf->locations;

    if (locations == ((void*)0)) {
        return NGX_OK;
    }

    if (ngx_queue_empty(locations)) {
        return NGX_OK;
    }

    for (q = ngx_queue_head(locations);
         q != ngx_queue_sentinel(locations);
         q = ngx_queue_next(q))
    {
        lq = (ngx_http_location_queue_t *) q;

        clcf = lq->exact ? lq->exact : lq->inclusive;

        if (ngx_http_init_static_location_trees(cf, clcf) != NGX_OK) {
            return NGX_ERROR;
        }
    }

    if (ngx_http_join_exact_locations(cf, locations) != NGX_OK) {
        return NGX_ERROR;
    }

    ngx_http_create_locations_list(locations, ngx_queue_head(locations));

    pclcf->static_locations = ngx_http_create_locations_tree(cf, locations, 0);
    if (pclcf->static_locations == ((void*)0)) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
