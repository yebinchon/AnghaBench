
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ key; } ;
typedef TYPE_1__ ngx_rbtree_node_t ;
typedef int ngx_msec_t ;
typedef scalar_t__ ngx_msec_int_t ;
struct TYPE_8__ {TYPE_1__* sentinel; TYPE_1__* root; } ;


 int NGX_TIMER_INFINITE ;
 scalar_t__ ngx_current_msec ;
 TYPE_6__ ngx_event_timer_rbtree ;
 TYPE_1__ ngx_event_timer_sentinel ;
 TYPE_1__* ngx_rbtree_min (TYPE_1__*,TYPE_1__*) ;

ngx_msec_t
ngx_event_find_timer(void)
{
    ngx_msec_int_t timer;
    ngx_rbtree_node_t *node, *root, *sentinel;

    if (ngx_event_timer_rbtree.root == &ngx_event_timer_sentinel) {
        return NGX_TIMER_INFINITE;
    }

    root = ngx_event_timer_rbtree.root;
    sentinel = ngx_event_timer_rbtree.sentinel;

    node = ngx_rbtree_min(root, sentinel);

    timer = (ngx_msec_int_t) (node->key - ngx_current_msec);

    return (ngx_msec_t) (timer > 0 ? timer : 0);
}
