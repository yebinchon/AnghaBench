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
typedef  int /*<<< orphan*/  mp_obj_t ;
typedef  int /*<<< orphan*/ * mp_call_fun_t ;
struct TYPE_2__ {int /*<<< orphan*/ * call; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mp_obj_instance_call ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

bool FUNC2(mp_obj_t o_in) {
    mp_call_fun_t call = FUNC0(o_in)->call;
    if (call != mp_obj_instance_call) {
        return call != NULL;
    }
    return FUNC1(o_in);
}