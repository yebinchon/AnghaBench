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
struct TYPE_4__ {int** tpixels; int** pixels; scalar_t__ trueColor; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int,int) ; 

int FUNC1 (gdImagePtr im, int x, int y)
{
	if (FUNC0(im, x, y)) {
		if (im->trueColor) {
			return im->tpixels[y][x];
		} else {
			return im->pixels[y][x];
		}
	} else {
		return 0;
	}
}