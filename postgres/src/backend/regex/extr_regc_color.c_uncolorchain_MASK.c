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
struct colormap {struct colordesc* cd; } ;
struct colordesc {struct arc* arcs; } ;
struct arc {size_t co; struct arc* colorchainRev; struct arc* colorchain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void
FUNC1(struct colormap *cm,
			 struct arc *a)
{
	struct colordesc *cd = &cm->cd[a->co];
	struct arc *aa = a->colorchainRev;

	if (aa == NULL)
	{
		FUNC0(cd->arcs == a);
		cd->arcs = a->colorchain;
	}
	else
	{
		FUNC0(aa->colorchain == a);
		aa->colorchain = a->colorchain;
	}
	if (a->colorchain != NULL)
		a->colorchain->colorchainRev = aa;
	a->colorchain = NULL;		/* paranoia */
	a->colorchainRev = NULL;
}