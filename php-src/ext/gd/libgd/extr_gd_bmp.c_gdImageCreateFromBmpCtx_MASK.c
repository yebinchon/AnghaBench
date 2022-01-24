#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * gdImagePtr ;
typedef  int /*<<< orphan*/  gdIOCtxPtr ;
struct TYPE_14__ {int magic; int numcolors; int width; int height; int numplanes; int depth; int off; } ;
typedef  TYPE_1__ bmp_info_t ;
typedef  TYPE_1__ bmp_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (int,int) ; 
 int /*<<< orphan*/ * FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

gdImagePtr FUNC13(gdIOCtxPtr infile)
{
	bmp_hdr_t *hdr;
	bmp_info_t *info;
	gdImagePtr im = NULL;
	int error = 0;

	if (!(hdr= (bmp_hdr_t *)FUNC7(1, sizeof(bmp_hdr_t)))) {
		return NULL;
	}

	if (FUNC5(infile, hdr)) {
		FUNC8(hdr);
		return NULL;
	}

	if (hdr->magic != 0x4d42) {
		FUNC8(hdr);
		return NULL;
	}

	if (!(info = (bmp_info_t *)FUNC7(1, sizeof(bmp_info_t)))) {
		FUNC8(hdr);
		return NULL;
	}

	if (FUNC6(infile, info)) {
		FUNC8(hdr);
		FUNC8(info);
		return NULL;
	}

	FUNC0(FUNC12("Numcolours: %d\n", info->numcolors));
	FUNC0(FUNC12("Width: %d\n", info->width));
	FUNC0(FUNC12("Height: %d\n", info->height));
	FUNC0(FUNC12("Planes: %d\n", info->numplanes));
	FUNC0(FUNC12("Depth: %d\n", info->depth));
	FUNC0(FUNC12("Offset: %d\n", hdr->off));

	if (info->depth >= 16) {
		im = FUNC10(info->width, info->height);
	} else {
		im = FUNC9(info->width, info->height);
	}

	if (!im) {
		FUNC8(hdr);
		FUNC8(info);
		return NULL;
	}

	switch (info->depth) {
	case 1:
		FUNC0(FUNC12("1-bit image\n"));
		error = FUNC1(im, infile, info, hdr);
		break;
	case 4:
		FUNC0(FUNC12("4-bit image\n"));
		error = FUNC2(im, infile, info, hdr);
		break;
	case 8:
		FUNC0(FUNC12("8-bit image\n"));
		error = FUNC3(im, infile, info, hdr);
		break;
	case 16:
	case 24:
	case 32:
		FUNC0(FUNC12("Direct BMP image\n"));
		error = FUNC4(im, infile, info, hdr);
		break;
	default:
		FUNC0(FUNC12("Unknown bit count\n"));
		error = 1;
	}

	FUNC8(hdr);
	FUNC8(info);

	if (error) {
		FUNC11(im);
		return NULL;
	}

	return im;
}