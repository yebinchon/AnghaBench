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
typedef  int /*<<< orphan*/  RangeFunction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alias ; 
 int /*<<< orphan*/  coldeflist ; 
 int /*<<< orphan*/  functions ; 
 int /*<<< orphan*/  is_rowsfrom ; 
 int /*<<< orphan*/  lateral ; 
 int /*<<< orphan*/  ordinality ; 

__attribute__((used)) static bool
FUNC2(const RangeFunction *a, const RangeFunction *b)
{
	FUNC1(lateral);
	FUNC1(ordinality);
	FUNC1(is_rowsfrom);
	FUNC0(functions);
	FUNC0(alias);
	FUNC0(coldeflist);

	return true;
}