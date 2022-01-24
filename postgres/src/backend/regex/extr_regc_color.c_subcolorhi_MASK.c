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
struct TYPE_2__ {int /*<<< orphan*/  nuchrs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 size_t COLORLESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (struct colormap*,size_t) ; 

__attribute__((used)) static color
FUNC3(struct colormap *cm, color *pco)
{
	color		co;				/* current color of entry */
	color		sco;			/* new subcolor */

	co = *pco;
	sco = FUNC2(cm, co);
	if (FUNC0())
		return COLORLESS;
	FUNC1(sco != COLORLESS);

	if (co == sco)				/* already in an open subcolor */
		return co;				/* rest is redundant */
	cm->cd[co].nuchrs--;
	cm->cd[sco].nuchrs++;
	*pco = sco;
	return sco;
}