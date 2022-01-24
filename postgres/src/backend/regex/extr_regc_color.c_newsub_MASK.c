#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct colormap {TYPE_1__* cd; } ;
typedef  size_t color ;
struct TYPE_2__ {size_t sub; int nschrs; int nuchrs; } ;

/* Variables and functions */
 int FUNC0 () ; 
 size_t COLORLESS ; 
 size_t NOSUB ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (struct colormap*) ; 

__attribute__((used)) static color
FUNC3(struct colormap *cm,
	   color co)
{
	color		sco;			/* new subcolor */

	sco = cm->cd[co].sub;
	if (sco == NOSUB)
	{							/* color has no open subcolor */
		/* optimization: singly-referenced color need not be subcolored */
		if ((cm->cd[co].nschrs + cm->cd[co].nuchrs) == 1)
			return co;
		sco = FUNC2(cm);		/* must create subcolor */
		if (sco == COLORLESS)
		{
			FUNC1(FUNC0());
			return COLORLESS;
		}
		cm->cd[co].sub = sco;
		cm->cd[sco].sub = sco;	/* open subcolor points to self */
	}
	FUNC1(sco != NOSUB);

	return sco;
}