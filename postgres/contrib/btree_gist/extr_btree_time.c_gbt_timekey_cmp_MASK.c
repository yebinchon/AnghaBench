#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; } ;
typedef  TYPE_1__ timeKEY ;
struct TYPE_4__ {scalar_t__ t; } ;
typedef  TYPE_2__ Nsrt ;
typedef  int /*<<< orphan*/  FmgrInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  time_cmp ; 

__attribute__((used)) static int
FUNC3(const void *a, const void *b, FmgrInfo *flinfo)
{
	timeKEY    *ia = (timeKEY *) (((const Nsrt *) a)->t);
	timeKEY    *ib = (timeKEY *) (((const Nsrt *) b)->t);
	int			res;

	res = FUNC0(FUNC1(time_cmp, FUNC2(ia->lower), FUNC2(ib->lower)));
	if (res == 0)
		return FUNC0(FUNC1(time_cmp, FUNC2(ia->upper), FUNC2(ib->upper)));

	return res;
}