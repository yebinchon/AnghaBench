#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sei_t ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef  TYPE_1__ sei_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 scalar_t__ sei_type_user_data_registered_itu_t_t35 ; 

void FUNC4(sei_t* to, sei_t* from, int itu_t_t35)
{
    if (!to || !from) {
        return;
    }

    sei_message_t* msg = NULL;
    for (msg = FUNC2(from); msg; msg = FUNC3(msg)) {
        if (itu_t_t35 || sei_type_user_data_registered_itu_t_t35 != msg->type) {
            FUNC0(to, FUNC1(msg));
        }
    }
}