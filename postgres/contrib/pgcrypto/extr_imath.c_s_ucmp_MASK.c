#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ mp_size ;
typedef  int /*<<< orphan*/  mp_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(mp_int a, mp_int b)
{
	mp_size		ua = FUNC1(a),
				ub = FUNC1(b);

	if (ua > ub)
	{
		return 1;
	}
	else if (ub > ua)
	{
		return -1;
	}
	else
	{
		return FUNC2(FUNC0(a), FUNC0(b), ua);
	}
}