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
typedef  int /*<<< orphan*/  ViewStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aliases ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  query ; 
 int /*<<< orphan*/  replace ; 
 int /*<<< orphan*/  view ; 
 int /*<<< orphan*/  withCheckOption ; 

__attribute__((used)) static bool
FUNC2(const ViewStmt *a, const ViewStmt *b)
{
	FUNC0(view);
	FUNC0(aliases);
	FUNC0(query);
	FUNC1(replace);
	FUNC0(options);
	FUNC1(withCheckOption);

	return true;
}