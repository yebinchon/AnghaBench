
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ngx_socket_t ;
struct TYPE_4__ {scalar_t__ pool; scalar_t__ fd; } ;
typedef TYPE_1__ ngx_connection_t ;


 int ngx_atomic_fetch_add (int ,int) ;
 int ngx_destroy_pool (scalar_t__) ;
 int ngx_free_connection (TYPE_1__*) ;
 int ngx_stat_active ;

__attribute__((used)) static void
ngx_close_accepted_udp_connection(ngx_connection_t *c)
{
    ngx_free_connection(c);

    c->fd = (ngx_socket_t) -1;

    if (c->pool) {
        ngx_destroy_pool(c->pool);
    }




}
