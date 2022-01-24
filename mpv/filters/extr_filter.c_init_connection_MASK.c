#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct mp_pin {scalar_t__ dir; int within_conn; int /*<<< orphan*/  manual_connection; struct mp_pin* conn; struct mp_pin* user_conn; struct mp_pin* other; TYPE_1__ data; int /*<<< orphan*/  data_requested; } ;

/* Variables and functions */
 scalar_t__ MP_PIN_IN ; 
 scalar_t__ MP_PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mp_pin* FUNC2 (struct mp_pin*) ; 

__attribute__((used)) static void FUNC3(struct mp_pin *p)
{
    if (p->dir == MP_PIN_IN)
        p = p->other;

    struct mp_pin *in = FUNC2(p);
    struct mp_pin *out = FUNC2(p->other);

    // These are the "outer" pins by definition, they have no user connections.
    FUNC1(!in->user_conn);
    FUNC1(!out->user_conn);

    // Logicaly, the ends are always manual connections. A pin chain without
    // manual connections at the ends is still disconnected (or if this
    // attempted to extend an existing connection, becomes dangling and gets
    // disconnected).
    if (!in->manual_connection || !out->manual_connection)
        return;

    FUNC1(in->dir == MP_PIN_IN);
    FUNC1(out->dir == MP_PIN_OUT);

    struct mp_pin *cur = in;
    while (cur) {
        FUNC1(!cur->within_conn && !cur->other->within_conn);
        FUNC1(!cur->conn && !cur->other->conn);
        FUNC1(!cur->data_requested); // unused for in pins
        FUNC1(!cur->data.type); // unused for in pins
        FUNC1(!cur->other->data_requested); // unset for unconnected out pins
        FUNC1(!cur->other->data.type); // unset for unconnected out pins
        cur->within_conn = cur->other->within_conn = true;
        cur = cur->other->user_conn;
    }

    in->conn = out;
    in->within_conn = false;
    out->conn = in;
    out->within_conn = false;

    // Scheduling so far will be messed up.
    FUNC0(in->manual_connection);
    FUNC0(out->manual_connection);
}