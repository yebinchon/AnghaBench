
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ use_event; TYPE_3__* event; scalar_t__ count; } ;
typedef TYPE_1__ ngx_cached_open_file_t ;
struct TYPE_6__ {struct TYPE_6__* data; } ;


 int NGX_CLOSE_EVENT ;
 int NGX_FLUSH_EVENT ;
 int NGX_VNODE_EVENT ;
 int ngx_del_event (TYPE_3__*,int ,int ) ;
 int ngx_free (TYPE_3__*) ;

__attribute__((used)) static void
ngx_open_file_del_event(ngx_cached_open_file_t *file)
{
    if (file->event == ((void*)0)) {
        return;
    }

    (void) ngx_del_event(file->event, NGX_VNODE_EVENT,
                         file->count ? NGX_FLUSH_EVENT : NGX_CLOSE_EVENT);

    ngx_free(file->event->data);
    ngx_free(file->event);
    file->event = ((void*)0);
    file->use_event = 0;
}
