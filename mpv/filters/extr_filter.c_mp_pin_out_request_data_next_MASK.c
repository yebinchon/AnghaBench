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
struct mp_pin {TYPE_1__* conn; } ;
struct TYPE_2__ {int /*<<< orphan*/  manual_connection; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mp_pin*) ; 

void FUNC2(struct mp_pin *p)
{
    if (FUNC1(p))
        FUNC0(p->conn->manual_connection);
}