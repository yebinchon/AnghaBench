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
typedef  int /*<<< orphan*/  st64 ;
struct TYPE_4__ {int /*<<< orphan*/  memref; } ;
typedef  TYPE_1__ RAnalValue ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static RAnalValue *FUNC1(RAnal *anal, int reg, st64 size) {
	RAnalValue *ret = FUNC0 (anal, reg);
	ret->memref = size;
	return ret;
}