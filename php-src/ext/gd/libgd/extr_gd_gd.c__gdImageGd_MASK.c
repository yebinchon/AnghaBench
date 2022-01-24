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
struct TYPE_4__ {int sy; int sx; scalar_t__** pixels; int /*<<< orphan*/ ** tpixels; scalar_t__ trueColor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (gdImagePtr im, gdIOCtx * out)
{
	int x, y;

	FUNC0(im, out);

	for (y = 0; y < im->sy; y++) {
		for (x = 0; x < im->sx; x++) {
			/* ROW-MAJOR IN GD 1.3 */
			if (im->trueColor) {
				FUNC2(im->tpixels[y][x], out);
			} else {
				FUNC1((unsigned char) im->pixels[y][x], out);
			}
		}
	}
}