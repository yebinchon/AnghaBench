#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * p; } ;
struct TYPE_6__ {scalar_t__ npts; int /*<<< orphan*/ * p; int /*<<< orphan*/  boundbox; } ;
typedef  TYPE_1__ POLYGON ;
typedef  TYPE_2__ LSEG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(POLYGON *contains_poly, POLYGON *contained_poly)
{
	int			i;
	LSEG		s;

	FUNC0(contains_poly->npts > 0 && contained_poly->npts > 0);

	/*
	 * Quick check to see if contained's bounding box is contained in
	 * contains' bb.
	 */
	if (!FUNC1(&contains_poly->boundbox, &contained_poly->boundbox))
		return false;

	s.p[0] = contained_poly->p[contained_poly->npts - 1];

	for (i = 0; i < contained_poly->npts; i++)
	{
		s.p[1] = contained_poly->p[i];
		if (!FUNC2(s.p, s.p + 1, contains_poly, 0))
			return false;
		s.p[0] = s.p[1];
	}

	return true;
}