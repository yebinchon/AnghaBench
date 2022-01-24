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
struct TYPE_2__ {scalar_t__ type; } ;
struct mp_pin {scalar_t__ dir; int within_conn; int data_requested; struct mp_pin* user_conn; struct mp_pin* other; TYPE_1__ data; int /*<<< orphan*/  owner; int /*<<< orphan*/ * conn; } ;

/* Variables and functions */
 scalar_t__ MP_PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mp_pin* FUNC2 (struct mp_pin*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct mp_pin *p)
{
    if (p->dir == MP_PIN_OUT)
        p = p->other;

    p = FUNC2(p);

    while (p) {
        p->conn = p->other->conn = NULL;
        p->within_conn = p->other->within_conn = false;
        FUNC1(!p->other->data_requested); // unused for in pins
        FUNC1(!p->other->data.type); // unused for in pins
        p->data_requested = false;
        if (p->data.type)
            FUNC0(p->owner, "dropping frame due to pin disconnect\n");
        if (p->data_requested)
            FUNC0(p->owner, "dropping request due to pin disconnect\n");
        FUNC3(&p->data);
        p = p->other->user_conn;
    }
}