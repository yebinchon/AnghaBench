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
typedef  int /*<<< orphan*/ * Relids ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

Relids
FUNC7(Relids outerrelids,
							 Relids outer_paramrels,
							 Relids innerrelids,
							 Relids inner_paramrels)
{
	Relids		required_outer;

	/* inner_path can require rels from outer path, but not vice versa */
	FUNC0(!FUNC5(outer_paramrels, innerrelids));
	/* easy case if inner path is not parameterized */
	if (!inner_paramrels)
		return FUNC1(outer_paramrels);
	/* else, form the union ... */
	required_outer = FUNC6(outer_paramrels, inner_paramrels);
	/* ... and remove any mention of now-satisfied outer rels */
	required_outer = FUNC2(required_outer,
									 outerrelids);
	/* maintain invariant that required_outer is exactly NULL if empty */
	if (FUNC4(required_outer))
	{
		FUNC3(required_outer);
		required_outer = NULL;
	}
	return required_outer;
}