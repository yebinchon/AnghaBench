#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
typedef  int /*<<< orphan*/  gdIOCtxPtr ;
struct TYPE_12__ {int enctype; int numcolors; scalar_t__ type; double width; int height; int /*<<< orphan*/  topdown; } ;
typedef  TYPE_2__ bmp_info_t ;
struct TYPE_13__ {scalar_t__ off; } ;
typedef  TYPE_3__ bmp_hdr_t ;
struct TYPE_11__ {int colorsTotal; int /*<<< orphan*/ * open; } ;

/* Variables and functions */
#define  BMP_BI_RGB 129 
#define  BMP_BI_RLE4 128 
 scalar_t__ BMP_PALETTE_4 ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(gdImagePtr im, gdIOCtxPtr infile, bmp_info_t *info, bmp_hdr_t *header)
{
	int ypos = 0, xpos = 0, row = 0, index = 0;
	int padding = 0, current_byte = 0;

	if (info->enctype != BMP_BI_RGB && info->enctype != BMP_BI_RLE4) {
		return 1;
	}

	if (!info->numcolors) {
		info->numcolors = 16;
	} else if (info->numcolors < 0 || info->numcolors > 16) {
		return 1;
	}

	if (FUNC0(im, infile, info->numcolors, (info->type == BMP_PALETTE_4))) {
		return 1;
	}

	im->colorsTotal = info->numcolors;

	/* There is a chance the data isn't until later, would be weird but it is possible */
	if (FUNC6(infile) != header->off) {
		/* Should make sure we don't seek past the file size */
		if (!FUNC5(infile, header->off)) {
			return 1;
		}
	}

	/* The line must be divisible by 4, else its padded with NULLs */
	padding = ((int)FUNC2(0.5 * info->width)) % 4;
	if (padding) {
		padding = 4 - padding;
	}

	switch (info->enctype) {
	case BMP_BI_RGB:
		for (ypos = 0; ypos < info->height; ++ypos) {
			if (info->topdown) {
				row = ypos;
			} else {
				row = info->height - ypos - 1;
			}

			for (xpos = 0; xpos < info->width; xpos += 2) {
				if (!FUNC3(&current_byte, infile)) {
					return 1;
				}

				index = (current_byte >> 4) & 0x0f;
				if (im->open[index]) {
					im->open[index] = 0;
				}
				FUNC4(im, xpos, row, index);

				/* This condition may get called often, potential optimsations */
				if (xpos >= info->width) {
					break;
				}

				index = current_byte & 0x0f;
				if (im->open[index]) {
					im->open[index] = 0;
				}
				FUNC4(im, xpos + 1, row, index);
			}

			for (xpos = padding; xpos > 0; --xpos) {
				if (!FUNC3(&index, infile)) {
					return 1;
				}
			}
		}
		break;

	case BMP_BI_RLE4:
		if (FUNC1(im, infile, info)) {
			return 1;
		}
		break;

	default:
		return 1;
	}
	return 0;
}