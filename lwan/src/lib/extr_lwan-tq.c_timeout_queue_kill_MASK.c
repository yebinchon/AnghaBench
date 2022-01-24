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
struct timeout_queue {int /*<<< orphan*/  lwan; } ;
struct lwan_connection {int /*<<< orphan*/ * coro; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct lwan_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeout_queue*,struct lwan_connection*) ; 

void FUNC5(struct timeout_queue *tq, struct lwan_connection *conn)
{
    FUNC4(tq, conn);

    if (FUNC0(conn->coro)) {
        FUNC2(conn->coro);
        conn->coro = NULL;

        FUNC1(FUNC3(tq->lwan, conn));
    }
}