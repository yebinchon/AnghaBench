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
struct mp_pin {scalar_t__ dir; int data_requested; TYPE_1__ data; int /*<<< orphan*/  conn; } ;

/* Variables and functions */
 scalar_t__ MP_PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct mp_pin *p)
{
    if (!p->conn || p->dir != MP_PIN_OUT) {
        FUNC0(!p->data.type);
        FUNC0(!p->data_requested);
    }
    FUNC1(&p->data);
    p->data_requested = false;
}