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
struct TYPE_3__ {int x; int y; int width; int height; } ;
typedef  TYPE_1__ gdRect ;
typedef  int /*<<< orphan*/ * gdImagePtr ;

/* Variables and functions */
#define  GD_CROP_BLACK 132 
#define  GD_CROP_DEFAULT 131 
#define  GD_CROP_SIDES 130 
#define  GD_CROP_TRANSPARENT 129 
#define  GD_CROP_WHITE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

gdImagePtr FUNC7(gdImagePtr im, const unsigned int mode)
{
	const int width = FUNC5(im);
	const int height = FUNC6(im);

	int x,y;
	int color, match;
	gdRect crop;

	crop.x = 0;
	crop.y = 0;
	crop.width = 0;
	crop.height = 0;

	switch (mode) {
		case GD_CROP_TRANSPARENT:
			color = FUNC4(im);
			break;

		case GD_CROP_BLACK:
			color = FUNC1(im, 0, 0, 0, 0);
			break;

		case GD_CROP_WHITE:
			color = FUNC1(im, 255, 255, 255, 0);
			break;

		case GD_CROP_SIDES:
			FUNC0(im, &color);
			break;

		case GD_CROP_DEFAULT:
		default:
			color = FUNC4(im);
			break;
	}

	/* TODO: Add gdImageGetRowPtr and works with ptr at the row level
	 * for the true color and palette images
	 * new formats will simply work with ptr
	 */
	match = 1;
	for (y = 0; match && y < height; y++) {
		for (x = 0; match && x < width; x++) {
			int c2 = FUNC3(im, x, y);
			match = (color == c2);
		}
	}

	/* Whole image would be cropped > bye */
	if (match) {
		return NULL;
	}

	crop.y = y - 1;

	match = 1;
	for (y = height - 1; match && y >= 0; y--) {
		for (x = 0; match && x < width; x++) {
			match = (color == FUNC3(im, x,y));
		}
	}
	crop.height = y - crop.y + 2;

	match = 1;
	for (x = 0; match && x < width; x++) {
		for (y = 0; match && y < crop.y + crop.height; y++) {
			match = (color == FUNC3(im, x,y));
		}
	}
	crop.x = x - 1;

	match = 1;
	for (x = width - 1; match && x >= 0; x--) {
		for (y = 0; match &&  y < crop.y + crop.height; y++) {
			match = (color == FUNC3(im, x,y));
		}
	}
	crop.width = x - crop.x + 2;

	return FUNC2(im, &crop);
}