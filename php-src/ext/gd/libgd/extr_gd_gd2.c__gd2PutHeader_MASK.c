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
struct TYPE_3__ {int sx; int sy; } ;

/* Variables and functions */
 scalar_t__* GD2_ID ; 
 int GD2_VERS ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2 (gdImagePtr im, gdIOCtx * out, int cs, int fmt, int cx, int cy)
{
	int i;

	/* Send the gd2 id, to verify file format. */
	for (i = 0; i < 4; i++) {
		FUNC0((unsigned char) (GD2_ID[i]), out);
	}

	/* We put the version info first, so future versions can easily change header info. */

	FUNC1(GD2_VERS, out);
	FUNC1(im->sx, out);
	FUNC1(im->sy, out);
	FUNC1(cs, out);
	FUNC1(fmt, out);
	FUNC1(cx, out);
	FUNC1(cy, out);
}