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
typedef  int /*<<< orphan*/  mp_const_obj_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 

const char *FUNC2(mp_const_obj_t o_in) {
    return FUNC1(FUNC0(o_in)->name);
}