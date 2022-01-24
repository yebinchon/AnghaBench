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
typedef  int /*<<< orphan*/  st32 ;
struct TYPE_4__ {int /*<<< orphan*/  imm; } ;
typedef  TYPE_1__ RAnalValue ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 

__attribute__((used)) static RAnalValue *FUNC1(RAnal *anal, st32 v) {
	RAnalValue *ret = FUNC0 ();
	ret->imm = v;
	return ret;
}