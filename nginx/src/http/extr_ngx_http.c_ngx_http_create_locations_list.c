
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_queue_t ;
struct TYPE_4__ {int list; TYPE_1__* name; int * inclusive; } ;
typedef TYPE_2__ ngx_http_location_queue_t ;
struct TYPE_3__ {size_t len; int * data; } ;


 scalar_t__ ngx_filename_cmp (int *,int *,size_t) ;
 int ngx_queue_add (int *,int *) ;
 int * ngx_queue_head (int *) ;
 int * ngx_queue_last (int *) ;
 int * ngx_queue_next (int *) ;
 int * ngx_queue_sentinel (int *) ;
 int ngx_queue_split (int *,int *,int *) ;

__attribute__((used)) static void
ngx_http_create_locations_list(ngx_queue_t *locations, ngx_queue_t *q)
{
    u_char *name;
    size_t len;
    ngx_queue_t *x, tail;
    ngx_http_location_queue_t *lq, *lx;

    if (q == ngx_queue_last(locations)) {
        return;
    }

    lq = (ngx_http_location_queue_t *) q;

    if (lq->inclusive == ((void*)0)) {
        ngx_http_create_locations_list(locations, ngx_queue_next(q));
        return;
    }

    len = lq->name->len;
    name = lq->name->data;

    for (x = ngx_queue_next(q);
         x != ngx_queue_sentinel(locations);
         x = ngx_queue_next(x))
    {
        lx = (ngx_http_location_queue_t *) x;

        if (len > lx->name->len
            || ngx_filename_cmp(name, lx->name->data, len) != 0)
        {
            break;
        }
    }

    q = ngx_queue_next(q);

    if (q == x) {
        ngx_http_create_locations_list(locations, x);
        return;
    }

    ngx_queue_split(locations, q, &tail);
    ngx_queue_add(&lq->list, &tail);

    if (x == ngx_queue_sentinel(locations)) {
        ngx_http_create_locations_list(&lq->list, ngx_queue_head(&lq->list));
        return;
    }

    ngx_queue_split(&lq->list, x, &tail);
    ngx_queue_add(locations, &tail);

    ngx_http_create_locations_list(&lq->list, ngx_queue_head(&lq->list));

    ngx_http_create_locations_list(locations, x);
}
