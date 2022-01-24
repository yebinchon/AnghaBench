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
typedef  int /*<<< orphan*/  gdIOCtx ;
struct TYPE_4__ {int sx; int sy; scalar_t__ trueColor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2 (gdImagePtr im, gdIOCtx * out)
{
	/* 65535 indicates this is a gd 2.x .gd file.
	 * 2.0.12: 65534 indicates truecolor.
	 */
	if (im->trueColor) {
		FUNC1(65534, out);
	} else {
		FUNC1(65535, out);
	}
	FUNC1(im->sx, out);
	FUNC1(im->sy, out);

	FUNC0(im, out);
}