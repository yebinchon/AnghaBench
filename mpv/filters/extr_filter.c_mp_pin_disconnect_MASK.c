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
struct mp_pin {struct mp_pin* user_conn; int /*<<< orphan*/ * manual_connection; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_pin*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_pin*) ; 

void FUNC2(struct mp_pin *p)
{
    if (!FUNC1(p))
        return;

    p->manual_connection = NULL;

    struct mp_pin *conn = p->user_conn;
    if (conn) {
        p->user_conn = NULL;
        conn->user_conn = NULL;
        FUNC0(conn);
    }

    FUNC0(p);
}