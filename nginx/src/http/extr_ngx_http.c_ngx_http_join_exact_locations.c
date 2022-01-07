
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_queue_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {scalar_t__ inclusive; int line; int file_name; TYPE_3__* name; scalar_t__ exact; } ;
typedef TYPE_1__ ngx_http_location_queue_t ;
struct TYPE_6__ {int log; } ;
typedef TYPE_2__ ngx_conf_t ;
struct TYPE_7__ {scalar_t__ len; int data; } ;


 int NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_OK ;
 scalar_t__ ngx_filename_cmp (int ,int ,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_3__*,int ,int ) ;
 int * ngx_queue_head (int *) ;
 int * ngx_queue_last (int *) ;
 int * ngx_queue_next (int *) ;
 int ngx_queue_remove (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_join_exact_locations(ngx_conf_t *cf, ngx_queue_t *locations)
{
    ngx_queue_t *q, *x;
    ngx_http_location_queue_t *lq, *lx;

    q = ngx_queue_head(locations);

    while (q != ngx_queue_last(locations)) {

        x = ngx_queue_next(q);

        lq = (ngx_http_location_queue_t *) q;
        lx = (ngx_http_location_queue_t *) x;

        if (lq->name->len == lx->name->len
            && ngx_filename_cmp(lq->name->data, lx->name->data, lx->name->len)
               == 0)
        {
            if ((lq->exact && lx->exact) || (lq->inclusive && lx->inclusive)) {
                ngx_log_error(NGX_LOG_EMERG, cf->log, 0,
                              "duplicate location \"%V\" in %s:%ui",
                              lx->name, lx->file_name, lx->line);

                return NGX_ERROR;
            }

            lq->inclusive = lx->inclusive;

            ngx_queue_remove(x);

            continue;
        }

        q = ngx_queue_next(q);
    }

    return NGX_OK;
}
