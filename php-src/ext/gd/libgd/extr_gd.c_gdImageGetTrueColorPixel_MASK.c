#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_4__ {int transparent; int /*<<< orphan*/ * alpha; int /*<<< orphan*/ * blue; int /*<<< orphan*/ * green; int /*<<< orphan*/ * red; int /*<<< orphan*/  trueColor; } ;

/* Variables and functions */
 int /*<<< orphan*/  gdAlphaTransparent ; 
 int FUNC0 (TYPE_1__*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2 (gdImagePtr im, int x, int y)
{
	int p = FUNC0(im, x, y);

	if (!im->trueColor)  {
		return FUNC1(im->red[p], im->green[p], im->blue[p], (im->transparent == p) ? gdAlphaTransparent : im->alpha[p]);
	} else {
		return p;
	}
}