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
typedef  scalar_t__ float8 ;
typedef  int /*<<< orphan*/  FmgrInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static float8
FUNC3(const void *a, const void *b, FmgrInfo *flinfo)
{
	float8		arg1 = *(const float8 *) a;
	float8		arg2 = *(const float8 *) b;
	float8		r;

	r = arg1 - arg2;
	FUNC1(r, FUNC2(arg1) || FUNC2(arg2), true);

	return FUNC0(r);
}