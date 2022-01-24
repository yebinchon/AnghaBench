#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cnfa {int nstates; } ;
struct guts {struct cnfa search; } ;
struct TYPE_3__ {scalar_t__ re_magic; scalar_t__ re_guts; } ;
typedef  TYPE_1__ regex_t ;

/* Variables and functions */
 scalar_t__ REMAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cnfa*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC2(const regex_t *regex, int st)
{
	struct cnfa *cnfa;
	int			arcs_count;

	FUNC0(regex != NULL && regex->re_magic == REMAGIC);
	cnfa = &((struct guts *) regex->re_guts)->search;

	if (st < 0 || st >= cnfa->nstates)
		return 0;
	arcs_count = 0;
	FUNC1(cnfa, st, &arcs_count, NULL, 0);
	return arcs_count;
}