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
typedef  int /*<<< orphan*/  mp_usmall ;
typedef  int /*<<< orphan*/ * mp_int ;

/* Variables and functions */
 scalar_t__ MP_NEG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(mp_int z, mp_usmall uv)
{
	FUNC1(z != NULL);

	if (FUNC0(z) == MP_NEG)
	{
		return -1;
	}
	else
	{
		return FUNC2(z, uv);
	}
}