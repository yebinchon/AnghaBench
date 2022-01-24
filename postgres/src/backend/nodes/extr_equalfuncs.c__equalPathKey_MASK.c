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
typedef  int /*<<< orphan*/  PathKey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pk_eclass ; 
 int /*<<< orphan*/  pk_nulls_first ; 
 int /*<<< orphan*/  pk_opfamily ; 
 int /*<<< orphan*/  pk_strategy ; 

__attribute__((used)) static bool
FUNC1(const PathKey *a, const PathKey *b)
{
	/* We assume pointer equality is sufficient to compare the eclasses */
	FUNC0(pk_eclass);
	FUNC0(pk_opfamily);
	FUNC0(pk_strategy);
	FUNC0(pk_nulls_first);

	return true;
}