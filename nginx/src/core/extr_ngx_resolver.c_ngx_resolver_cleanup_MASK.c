#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_9__ {size_t nelts; TYPE_3__* elts; } ;
struct TYPE_10__ {TYPE_1__ connections; TYPE_7__* event; int /*<<< orphan*/  addr6_rbtree; int /*<<< orphan*/  addr_rbtree; int /*<<< orphan*/  srv_rbtree; int /*<<< orphan*/  name_rbtree; } ;
typedef  TYPE_2__ ngx_resolver_t ;
struct TYPE_11__ {TYPE_5__* write_buf; TYPE_5__* read_buf; scalar_t__ tcp; scalar_t__ udp; } ;
typedef  TYPE_3__ ngx_resolver_connection_t ;
struct TYPE_14__ {int /*<<< orphan*/  log; } ;
struct TYPE_13__ {scalar_t__ timer_set; } ;
struct TYPE_12__ {struct TYPE_12__* start; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_CORE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_8__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_5__*) ; 

__attribute__((used)) static void
FUNC5(void *data)
{
    ngx_resolver_t  *r = data;

    ngx_uint_t                  i;
    ngx_resolver_connection_t  *rec;

    FUNC2(NGX_LOG_DEBUG_CORE, ngx_cycle->log, 0, "cleanup resolver");

    FUNC3(r, &r->name_rbtree);

    FUNC3(r, &r->srv_rbtree);

    FUNC3(r, &r->addr_rbtree);

#if (NGX_HAVE_INET6)
    ngx_resolver_cleanup_tree(r, &r->addr6_rbtree);
#endif

    if (r->event->timer_set) {
        FUNC1(r->event);
    }

    rec = r->connections.elts;

    for (i = 0; i < r->connections.nelts; i++) {
        if (rec[i].udp) {
            FUNC0(rec[i].udp);
        }

        if (rec[i].tcp) {
            FUNC0(rec[i].tcp);
        }

        if (rec[i].read_buf) {
            FUNC4(r, rec[i].read_buf->start);
            FUNC4(r, rec[i].read_buf);
        }

        if (rec[i].write_buf) {
            FUNC4(r, rec[i].write_buf->start);
            FUNC4(r, rec[i].write_buf);
        }
    }
}