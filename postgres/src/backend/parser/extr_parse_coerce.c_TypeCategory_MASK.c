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
typedef  int /*<<< orphan*/  TYPCATEGORY ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char TYPCATEGORY_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int*) ; 

TYPCATEGORY
FUNC2(Oid type)
{
	char		typcategory;
	bool		typispreferred;

	FUNC1(type, &typcategory, &typispreferred);
	FUNC0(typcategory != TYPCATEGORY_INVALID);
	return (TYPCATEGORY) typcategory;
}