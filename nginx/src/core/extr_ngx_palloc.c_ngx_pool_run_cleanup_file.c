
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* cleanup; } ;
typedef TYPE_1__ ngx_pool_t ;
struct TYPE_8__ {int (* handler ) (TYPE_3__*) ;TYPE_3__* data; struct TYPE_8__* next; } ;
typedef TYPE_2__ ngx_pool_cleanup_t ;
struct TYPE_9__ {scalar_t__ fd; } ;
typedef TYPE_3__ ngx_pool_cleanup_file_t ;
typedef scalar_t__ ngx_fd_t ;


 int ngx_pool_cleanup_file (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;

void
ngx_pool_run_cleanup_file(ngx_pool_t *p, ngx_fd_t fd)
{
    ngx_pool_cleanup_t *c;
    ngx_pool_cleanup_file_t *cf;

    for (c = p->cleanup; c; c = c->next) {
        if (c->handler == ngx_pool_cleanup_file) {

            cf = c->data;

            if (cf->fd == fd) {
                c->handler(cf);
                c->handler = ((void*)0);
                return;
            }
        }
    }
}
