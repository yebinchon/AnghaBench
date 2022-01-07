
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_queue_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_9__ {TYPE_3__* exact; TYPE_3__* inclusive; } ;
typedef TYPE_1__ ngx_http_location_queue_t ;
struct TYPE_10__ {TYPE_3__** named_locations; } ;
typedef TYPE_2__ ngx_http_core_srv_conf_t ;
struct TYPE_11__ {struct TYPE_11__** regex_locations; scalar_t__ noname; scalar_t__ named; scalar_t__ regex; int * locations; } ;
typedef TYPE_3__ ngx_http_core_loc_conf_t ;
struct TYPE_12__ {int pool; } ;
typedef TYPE_4__ ngx_conf_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int ngx_http_cmp_locations ;
 TYPE_3__** ngx_palloc (int ,int) ;
 int * ngx_queue_head (int *) ;
 int * ngx_queue_next (int *) ;
 int * ngx_queue_sentinel (int *) ;
 int ngx_queue_sort (int *,int ) ;
 int ngx_queue_split (int *,int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_init_locations(ngx_conf_t *cf, ngx_http_core_srv_conf_t *cscf,
    ngx_http_core_loc_conf_t *pclcf)
{
    ngx_uint_t n;
    ngx_queue_t *q, *locations, *named, tail;
    ngx_http_core_loc_conf_t *clcf;
    ngx_http_location_queue_t *lq;
    ngx_http_core_loc_conf_t **clcfp;





    locations = pclcf->locations;

    if (locations == ((void*)0)) {
        return NGX_OK;
    }

    ngx_queue_sort(locations, ngx_http_cmp_locations);

    named = ((void*)0);
    n = 0;





    for (q = ngx_queue_head(locations);
         q != ngx_queue_sentinel(locations);
         q = ngx_queue_next(q))
    {
        lq = (ngx_http_location_queue_t *) q;

        clcf = lq->exact ? lq->exact : lq->inclusive;

        if (ngx_http_init_locations(cf, ((void*)0), clcf) != NGX_OK) {
            return NGX_ERROR;
        }
        if (clcf->named) {
            n++;

            if (named == ((void*)0)) {
                named = q;
            }

            continue;
        }

        if (clcf->noname) {
            break;
        }
    }

    if (q != ngx_queue_sentinel(locations)) {
        ngx_queue_split(locations, q, &tail);
    }

    if (named) {
        clcfp = ngx_palloc(cf->pool,
                           (n + 1) * sizeof(ngx_http_core_loc_conf_t *));
        if (clcfp == ((void*)0)) {
            return NGX_ERROR;
        }

        cscf->named_locations = clcfp;

        for (q = named;
             q != ngx_queue_sentinel(locations);
             q = ngx_queue_next(q))
        {
            lq = (ngx_http_location_queue_t *) q;

            *(clcfp++) = lq->exact;
        }

        *clcfp = ((void*)0);

        ngx_queue_split(locations, named, &tail);
    }
    return NGX_OK;
}
