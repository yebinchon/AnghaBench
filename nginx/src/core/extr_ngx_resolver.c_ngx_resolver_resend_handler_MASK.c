#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int time_t ;
struct TYPE_5__ {int /*<<< orphan*/  event; int /*<<< orphan*/  addr6_resend_queue; int /*<<< orphan*/  addr6_rbtree; int /*<<< orphan*/  addr_resend_queue; int /*<<< orphan*/  addr_rbtree; int /*<<< orphan*/  srv_resend_queue; int /*<<< orphan*/  srv_rbtree; int /*<<< orphan*/  name_resend_queue; int /*<<< orphan*/  name_rbtree; int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_resolver_t ;
typedef  int /*<<< orphan*/  ngx_msec_t ;
struct TYPE_6__ {TYPE_1__* data; } ;
typedef  TYPE_2__ ngx_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(ngx_event_t *ev)
{
    time_t           timer, atimer, stimer, ntimer;
#if (NGX_HAVE_INET6)
    time_t           a6timer;
#endif
    ngx_resolver_t  *r;

    r = ev->data;

    FUNC1(NGX_LOG_DEBUG_CORE, r->log, 0,
                   "resolver resend handler");

    /* lock name mutex */

    ntimer = FUNC3(r, &r->name_rbtree, &r->name_resend_queue);

    stimer = FUNC3(r, &r->srv_rbtree, &r->srv_resend_queue);

    /* unlock name mutex */

    /* lock addr mutex */

    atimer = FUNC3(r, &r->addr_rbtree, &r->addr_resend_queue);

    /* unlock addr mutex */

#if (NGX_HAVE_INET6)

    /* lock addr6 mutex */

    a6timer = ngx_resolver_resend(r, &r->addr6_rbtree, &r->addr6_resend_queue);

    /* unlock addr6 mutex */

#endif

    timer = ntimer;

    if (timer == 0) {
        timer = atimer;

    } else if (atimer) {
        timer = FUNC2(timer, atimer);
    }

    if (timer == 0) {
        timer = stimer;

    } else if (stimer) {
        timer = FUNC2(timer, stimer);
    }

#if (NGX_HAVE_INET6)

    if (timer == 0) {
        timer = a6timer;

    } else if (a6timer) {
        timer = ngx_min(timer, a6timer);
    }

#endif

    if (timer) {
        FUNC0(r->event, (ngx_msec_t) (timer * 1000));
    }
}