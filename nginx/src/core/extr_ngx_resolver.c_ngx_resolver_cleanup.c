
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_9__ {size_t nelts; TYPE_3__* elts; } ;
struct TYPE_10__ {TYPE_1__ connections; TYPE_7__* event; int addr6_rbtree; int addr_rbtree; int srv_rbtree; int name_rbtree; } ;
typedef TYPE_2__ ngx_resolver_t ;
struct TYPE_11__ {TYPE_5__* write_buf; TYPE_5__* read_buf; scalar_t__ tcp; scalar_t__ udp; } ;
typedef TYPE_3__ ngx_resolver_connection_t ;
struct TYPE_14__ {int log; } ;
struct TYPE_13__ {scalar_t__ timer_set; } ;
struct TYPE_12__ {struct TYPE_12__* start; } ;


 int NGX_LOG_DEBUG_CORE ;
 int ngx_close_connection (scalar_t__) ;
 TYPE_8__* ngx_cycle ;
 int ngx_del_timer (TYPE_7__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_resolver_cleanup_tree (TYPE_2__*,int *) ;
 int ngx_resolver_free (TYPE_2__*,TYPE_5__*) ;

__attribute__((used)) static void
ngx_resolver_cleanup(void *data)
{
    ngx_resolver_t *r = data;

    ngx_uint_t i;
    ngx_resolver_connection_t *rec;

    ngx_log_debug0(NGX_LOG_DEBUG_CORE, ngx_cycle->log, 0, "cleanup resolver");

    ngx_resolver_cleanup_tree(r, &r->name_rbtree);

    ngx_resolver_cleanup_tree(r, &r->srv_rbtree);

    ngx_resolver_cleanup_tree(r, &r->addr_rbtree);





    if (r->event->timer_set) {
        ngx_del_timer(r->event);
    }

    rec = r->connections.elts;

    for (i = 0; i < r->connections.nelts; i++) {
        if (rec[i].udp) {
            ngx_close_connection(rec[i].udp);
        }

        if (rec[i].tcp) {
            ngx_close_connection(rec[i].tcp);
        }

        if (rec[i].read_buf) {
            ngx_resolver_free(r, rec[i].read_buf->start);
            ngx_resolver_free(r, rec[i].read_buf);
        }

        if (rec[i].write_buf) {
            ngx_resolver_free(r, rec[i].write_buf->start);
            ngx_resolver_free(r, rec[i].write_buf);
        }
    }
}
