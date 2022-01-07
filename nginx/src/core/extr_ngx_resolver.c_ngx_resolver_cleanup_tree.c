
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ngx_resolver_t ;
struct TYPE_10__ {int node; TYPE_2__* waiting; int queue; } ;
typedef TYPE_1__ ngx_resolver_node_t ;
struct TYPE_11__ {struct TYPE_11__* event; scalar_t__ timer_set; struct TYPE_11__* next; } ;
typedef TYPE_2__ ngx_resolver_ctx_t ;
struct TYPE_12__ {scalar_t__ root; scalar_t__ sentinel; } ;
typedef TYPE_3__ ngx_rbtree_t ;


 int ngx_del_timer (TYPE_2__*) ;
 int ngx_queue_remove (int *) ;
 int ngx_rbtree_delete (TYPE_3__*,int *) ;
 int ngx_rbtree_min (scalar_t__,scalar_t__) ;
 int ngx_resolver_free (int *,TYPE_2__*) ;
 int ngx_resolver_free_node (int *,TYPE_1__*) ;
 TYPE_1__* ngx_resolver_node (int ) ;

__attribute__((used)) static void
ngx_resolver_cleanup_tree(ngx_resolver_t *r, ngx_rbtree_t *tree)
{
    ngx_resolver_ctx_t *ctx, *next;
    ngx_resolver_node_t *rn;

    while (tree->root != tree->sentinel) {

        rn = ngx_resolver_node(ngx_rbtree_min(tree->root, tree->sentinel));

        ngx_queue_remove(&rn->queue);

        for (ctx = rn->waiting; ctx; ctx = next) {
            next = ctx->next;

            if (ctx->event) {
                if (ctx->event->timer_set) {
                    ngx_del_timer(ctx->event);
                }

                ngx_resolver_free(r, ctx->event);
            }

            ngx_resolver_free(r, ctx);
        }

        ngx_rbtree_delete(tree, &rn->node);

        ngx_resolver_free_node(r, rn);
    }
}
