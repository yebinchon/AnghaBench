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
typedef  int /*<<< orphan*/  Param ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  paramcollid ; 
 int /*<<< orphan*/  paramid ; 
 int /*<<< orphan*/  paramkind ; 
 int /*<<< orphan*/  paramtype ; 
 int /*<<< orphan*/  paramtypmod ; 

__attribute__((used)) static bool
FUNC2(const Param *a, const Param *b)
{
	FUNC1(paramkind);
	FUNC1(paramid);
	FUNC1(paramtype);
	FUNC1(paramtypmod);
	FUNC1(paramcollid);
	FUNC0(location);

	return true;
}