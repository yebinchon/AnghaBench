
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int log; TYPE_2__* data; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_9__ {int (* handler ) (TYPE_1__*) ;TYPE_4__* file; int fd; } ;
typedef TYPE_2__ ngx_event_aio_t ;
struct TYPE_10__ {int name; } ;


 scalar_t__ NGX_AGAIN ;
 int NGX_LOG_DEBUG_CORE ;
 scalar_t__ ngx_file_aio_result (TYPE_4__*,TYPE_2__*,TYPE_1__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
ngx_file_aio_event_handler(ngx_event_t *ev)
{
    ngx_event_aio_t *aio;

    aio = ev->data;

    ngx_log_debug2(NGX_LOG_DEBUG_CORE, ev->log, 0,
                   "aio event handler fd:%d %V", aio->fd, &aio->file->name);

    if (ngx_file_aio_result(aio->file, aio, ev) != NGX_AGAIN) {
        aio->handler(ev);
    }
}
