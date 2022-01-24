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
struct colormap {size_t* locolormap; TYPE_1__* cd; } ;
typedef  size_t color ;
typedef  scalar_t__ chr ;
struct TYPE_2__ {scalar_t__ nschrs; scalar_t__ firstchr; } ;

/* Variables and functions */
 scalar_t__ CHR_MIN ; 
 scalar_t__ FUNC0 () ; 
 size_t COLORLESS ; 
 scalar_t__ MAX_SIMPLE_CHR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (struct colormap*,size_t) ; 

__attribute__((used)) static color
FUNC3(struct colormap *cm, chr c)
{
	color		co;				/* current color of c */
	color		sco;			/* new subcolor */

	FUNC1(c <= MAX_SIMPLE_CHR);

	co = cm->locolormap[c - CHR_MIN];
	sco = FUNC2(cm, co);
	if (FUNC0())
		return COLORLESS;
	FUNC1(sco != COLORLESS);

	if (co == sco)				/* already in an open subcolor */
		return co;				/* rest is redundant */
	cm->cd[co].nschrs--;
	if (cm->cd[sco].nschrs == 0)
		cm->cd[sco].firstchr = c;
	cm->cd[sco].nschrs++;
	cm->locolormap[c - CHR_MIN] = sco;
	return sco;
}