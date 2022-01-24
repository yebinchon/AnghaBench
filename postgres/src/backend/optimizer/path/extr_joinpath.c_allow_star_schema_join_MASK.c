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
typedef  int /*<<< orphan*/  Relids ;
typedef  int /*<<< orphan*/  PlannerInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC2(PlannerInfo *root,
					   Relids outerrelids,
					   Relids inner_paramrels)
{
	/*
	 * It's a star-schema case if the outer rel provides some but not all of
	 * the inner rel's parameterization.
	 */
	return (FUNC1(inner_paramrels, outerrelids) &&
			FUNC0(inner_paramrels, outerrelids));
}