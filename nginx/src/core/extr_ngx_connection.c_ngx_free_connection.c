
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t fd; struct TYPE_4__* data; } ;
typedef TYPE_1__ ngx_connection_t ;
struct TYPE_5__ {TYPE_1__** files; int free_connection_n; TYPE_1__* free_connections; } ;


 TYPE_3__* ngx_cycle ;

void
ngx_free_connection(ngx_connection_t *c)
{
    c->data = ngx_cycle->free_connections;
    ngx_cycle->free_connections = c;
    ngx_cycle->free_connection_n++;

    if (ngx_cycle->files && ngx_cycle->files[c->fd] == c) {
        ngx_cycle->files[c->fd] = ((void*)0);
    }
}
