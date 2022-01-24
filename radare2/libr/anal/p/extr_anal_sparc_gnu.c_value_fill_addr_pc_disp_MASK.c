#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
typedef  scalar_t__ st64 ;
struct TYPE_4__ {scalar_t__ base; } ;
typedef  TYPE_1__ RAnalValue ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 

__attribute__((used)) static RAnalValue * FUNC1(const ut64 addr, const st64 disp) {
	RAnalValue *val = FUNC0();
	val->base = addr + disp;
	return val;
}