#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timeout_queue {scalar_t__ keep_alive_timeout; scalar_t__ time; } ;
struct lwan_connection {scalar_t__ time_to_die; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeout_queue*,struct lwan_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeout_queue*,struct lwan_connection*) ; 

void FUNC2(struct timeout_queue *tq,
                                struct lwan_connection *conn)
{
    /* CONN_IS_KEEP_ALIVE isn't checked here because non-keep-alive connections
     * are closed in the request processing coroutine after they have been
     * served.  In practice, if this is called, it's a keep-alive connection. */
    conn->time_to_die = tq->time + tq->keep_alive_timeout;

    FUNC1(tq, conn);
    FUNC0(tq, conn);
}