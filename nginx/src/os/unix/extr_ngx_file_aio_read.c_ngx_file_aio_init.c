
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_pool_t ;
typedef int ngx_int_t ;
struct TYPE_7__ {TYPE_3__* aio; int log; int fd; } ;
typedef TYPE_2__ ngx_file_t ;
struct TYPE_6__ {int ready; int log; TYPE_3__* data; } ;
struct TYPE_8__ {TYPE_1__ event; int fd; TYPE_2__* file; } ;
typedef TYPE_3__ ngx_event_aio_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_3__* ngx_pcalloc (int *,int) ;

ngx_int_t
ngx_file_aio_init(ngx_file_t *file, ngx_pool_t *pool)
{
    ngx_event_aio_t *aio;

    aio = ngx_pcalloc(pool, sizeof(ngx_event_aio_t));
    if (aio == ((void*)0)) {
        return NGX_ERROR;
    }

    aio->file = file;
    aio->fd = file->fd;
    aio->event.data = aio;
    aio->event.ready = 1;
    aio->event.log = file->log;

    file->aio = aio;

    return NGX_OK;
}
