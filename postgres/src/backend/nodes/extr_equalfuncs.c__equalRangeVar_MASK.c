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
typedef  int /*<<< orphan*/  RangeVar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alias ; 
 int /*<<< orphan*/  catalogname ; 
 int /*<<< orphan*/  inh ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  relname ; 
 int /*<<< orphan*/  relpersistence ; 
 int /*<<< orphan*/  schemaname ; 

__attribute__((used)) static bool
FUNC4(const RangeVar *a, const RangeVar *b)
{
	FUNC3(catalogname);
	FUNC3(schemaname);
	FUNC3(relname);
	FUNC2(inh);
	FUNC2(relpersistence);
	FUNC1(alias);
	FUNC0(location);

	return true;
}