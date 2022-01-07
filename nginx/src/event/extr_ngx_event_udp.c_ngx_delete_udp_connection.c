
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* udp; TYPE_1__* listening; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_5__ {int node; } ;
struct TYPE_4__ {int rbtree; } ;


 int ngx_rbtree_delete (int *,int *) ;

void
ngx_delete_udp_connection(void *data)
{
    ngx_connection_t *c = data;

    if (c->udp == ((void*)0)) {
        return;
    }

    ngx_rbtree_delete(&c->listening->rbtree, &c->udp->node);

    c->udp = ((void*)0);
}
