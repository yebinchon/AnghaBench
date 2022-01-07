
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_queue_t ;
typedef int ngx_int_t ;
struct TYPE_12__ {int queue; int list; int line; int file_name; int * name; TYPE_5__* inclusive; TYPE_5__* exact; } ;
typedef TYPE_4__ ngx_http_location_queue_t ;
struct TYPE_13__ {int name; scalar_t__ noname; scalar_t__ named; scalar_t__ regex; scalar_t__ exact_match; } ;
typedef TYPE_5__ ngx_http_core_loc_conf_t ;
struct TYPE_14__ {TYPE_3__* conf_file; int temp_pool; } ;
typedef TYPE_6__ ngx_conf_t ;
struct TYPE_9__ {int data; } ;
struct TYPE_10__ {TYPE_1__ name; } ;
struct TYPE_11__ {int line; TYPE_2__ file; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 void* ngx_palloc (int ,int) ;
 int ngx_queue_init (int *) ;
 int ngx_queue_insert_tail (int *,int *) ;

ngx_int_t
ngx_http_add_location(ngx_conf_t *cf, ngx_queue_t **locations,
    ngx_http_core_loc_conf_t *clcf)
{
    ngx_http_location_queue_t *lq;

    if (*locations == ((void*)0)) {
        *locations = ngx_palloc(cf->temp_pool,
                                sizeof(ngx_http_location_queue_t));
        if (*locations == ((void*)0)) {
            return NGX_ERROR;
        }

        ngx_queue_init(*locations);
    }

    lq = ngx_palloc(cf->temp_pool, sizeof(ngx_http_location_queue_t));
    if (lq == ((void*)0)) {
        return NGX_ERROR;
    }

    if (clcf->exact_match



        || clcf->named || clcf->noname)
    {
        lq->exact = clcf;
        lq->inclusive = ((void*)0);

    } else {
        lq->exact = ((void*)0);
        lq->inclusive = clcf;
    }

    lq->name = &clcf->name;
    lq->file_name = cf->conf_file->file.name.data;
    lq->line = cf->conf_file->line;

    ngx_queue_init(&lq->list);

    ngx_queue_insert_tail(*locations, &lq->queue);

    return NGX_OK;
}
