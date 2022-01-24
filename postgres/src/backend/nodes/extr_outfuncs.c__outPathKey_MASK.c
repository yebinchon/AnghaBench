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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  PathKey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pk_eclass ; 
 int /*<<< orphan*/  pk_nulls_first ; 
 int /*<<< orphan*/  pk_opfamily ; 
 int /*<<< orphan*/  pk_strategy ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const PathKey *node)
{
	FUNC3("PATHKEY");

	FUNC2(pk_eclass);
	FUNC4(pk_opfamily);
	FUNC1(pk_strategy);
	FUNC0(pk_nulls_first);
}