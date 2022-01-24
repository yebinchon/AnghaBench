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
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arrayBounds ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  names ; 
 int /*<<< orphan*/  pct_type ; 
 int /*<<< orphan*/  setof ; 
 int /*<<< orphan*/  typeOid ; 
 int /*<<< orphan*/  typemod ; 
 int /*<<< orphan*/  typmods ; 

__attribute__((used)) static void
FUNC6(StringInfo str, const TypeName *node)
{
	FUNC4("TYPENAME");

	FUNC3(names);
	FUNC5(typeOid);
	FUNC0(setof);
	FUNC0(pct_type);
	FUNC3(typmods);
	FUNC1(typemod);
	FUNC3(arrayBounds);
	FUNC2(location);
}