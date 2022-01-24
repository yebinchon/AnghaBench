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
typedef  int /*<<< orphan*/  TypeName ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arrayBounds ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  names ; 
 int /*<<< orphan*/  pct_type ; 
 int /*<<< orphan*/  setof ; 
 int /*<<< orphan*/  typeOid ; 
 int /*<<< orphan*/  typemod ; 
 int /*<<< orphan*/  typmods ; 

__attribute__((used)) static bool
FUNC3(const TypeName *a, const TypeName *b)
{
	FUNC1(names);
	FUNC2(typeOid);
	FUNC2(setof);
	FUNC2(pct_type);
	FUNC1(typmods);
	FUNC2(typemod);
	FUNC1(arrayBounds);
	FUNC0(location);

	return true;
}