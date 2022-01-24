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
struct mp_frame {int dummy; } ;
struct mp_pin {scalar_t__ dir; struct mp_frame data; int /*<<< orphan*/  data_requested; TYPE_1__* conn; int /*<<< orphan*/  within_conn; } ;
struct TYPE_2__ {scalar_t__ manual_connection; } ;

/* Variables and functions */
 scalar_t__ MP_PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_pin*) ; 

void FUNC2(struct mp_pin *p, struct mp_frame frame)
{
    FUNC0(p->dir == MP_PIN_OUT);
    FUNC0(!p->within_conn);
    FUNC0(p->conn && p->conn->manual_connection);
    // Unread is allowed strictly only if you didn't do anything else with
    // the pin since the time you read it.
    FUNC0(!FUNC1(p));
    FUNC0(!p->data_requested);
    p->data = frame;
}