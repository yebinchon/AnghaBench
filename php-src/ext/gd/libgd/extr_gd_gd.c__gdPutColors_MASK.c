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
typedef  TYPE_1__* gdImagePtr ;
typedef  int /*<<< orphan*/  gdIOCtx ;
struct TYPE_3__ {unsigned char trueColor; scalar_t__* alpha; scalar_t__* blue; scalar_t__* green; scalar_t__* red; int /*<<< orphan*/  transparent; int /*<<< orphan*/  colorsTotal; } ;

/* Variables and functions */
 int gdMaxColors ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3 (gdImagePtr im, gdIOCtx * out)
{
	int i;

	FUNC0(im->trueColor, out);
	if (!im->trueColor) {
		FUNC2(im->colorsTotal, out);
	}
	FUNC1(im->transparent, out);
	if (!im->trueColor) {
		for (i = 0; i < gdMaxColors; i++) {
			FUNC0((unsigned char) im->red[i], out);
			FUNC0((unsigned char) im->green[i], out);
			FUNC0((unsigned char) im->blue[i], out);
			FUNC0((unsigned char) im->alpha[i], out);
		}
	}
}