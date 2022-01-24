#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
typedef  int /*<<< orphan*/  gdIOCtxPtr ;
struct TYPE_7__ {int colorsTotal; scalar_t__* open; void* interlace; } ;

/* Variables and functions */
 void* FUNC0 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char,int*,int*) ; 
 int FALSE ; 
 int /*<<< orphan*/  INTERLACE ; 
 int FUNC2 (unsigned char,unsigned char) ; 
 int /*<<< orphan*/  LOCALCOLORMAP ; 
 int MAXCOLORMAPSIZE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,unsigned char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int,unsigned char**,void*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 scalar_t__ VERBOSE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 

gdImagePtr FUNC13(gdIOCtxPtr fd) /* {{{ */
{
	int BitPixel;
#if 0
	int ColorResolution;
	int Background;
	int AspectRatio;
#endif
	int Transparent = (-1);
	unsigned char   buf[16];
	unsigned char   c;
	unsigned char   ColorMap[3][MAXCOLORMAPSIZE];
	unsigned char   localColorMap[3][MAXCOLORMAPSIZE];
	int             imw, imh, screen_width, screen_height;
	int             useGlobalColormap;
	int             bitPixel;
	int	       i;
	/*1.4//int             imageCount = 0; */

	int ZeroDataBlock = FALSE;
	int haveGlobalColormap;
	gdImagePtr im = 0;

	FUNC10(ColorMap, 0, 3 * MAXCOLORMAPSIZE);
	FUNC10(localColorMap, 0, 3 * MAXCOLORMAPSIZE);

	/*1.4//imageNumber = 1; */
	if (! FUNC5(fd,buf,6)) {
		return 0;
	}
	if (FUNC12((char *)buf,"GIF",3) != 0) {
		return 0;
	}

	if (FUNC9((char *)buf+3, "87a", 3) == 0) {
		/* GIF87a */
	} else if (FUNC9((char *)buf+3, "89a", 3) == 0) {
		/* GIF89a */
	} else {
		return 0;
	}

	if (! FUNC5(fd,buf,7)) {
		return 0;
	}

	BitPixel        = 2<<(buf[4]&0x07);
#if 0
	ColorResolution = (int) (((buf[4]&0x70)>>3)+1);
	Background      = buf[5];
	AspectRatio     = buf[6];
#endif
	screen_width = imw = FUNC2(buf[0],buf[1]);
	screen_height = imh = FUNC2(buf[2],buf[3]);

	haveGlobalColormap = FUNC0(buf[4], LOCALCOLORMAP);    /* Global Colormap */
	if (haveGlobalColormap) {
		if (FUNC3(fd, BitPixel, ColorMap)) {
			return 0;
		}
	}

	for (;;) {
		int top, left;
		int width, height;

		if (! FUNC5(fd,&c,1)) {
			return 0;
		}
		if (c == ';') {         /* GIF terminator */
			goto terminated;
		}

		if (c == '!') {         /* Extension */
			if (! FUNC5(fd,&c,1)) {
				return 0;
			}
			FUNC1(fd, c, &Transparent, &ZeroDataBlock);
			continue;
		}

		if (c != ',') {         /* Not a valid start character */
			continue;
		}

		/*1.4//++imageCount; */

		if (! FUNC5(fd,buf,9)) {
			return 0;
		}

		useGlobalColormap = ! FUNC0(buf[8], LOCALCOLORMAP);

		bitPixel = 1<<((buf[8]&0x07)+1);
		left = FUNC2(buf[0], buf[1]);
		top = FUNC2(buf[2], buf[3]);
		width = FUNC2(buf[4], buf[5]);
		height = FUNC2(buf[6], buf[7]);

		if (left + width > screen_width || top + height > screen_height) {
			if (VERBOSE) {
				FUNC11("Frame is not confined to screen dimension.\n");
			}
			return 0;
		}

		if (!(im = FUNC7(width, height))) {
			return 0;
		}
		im->interlace = FUNC0(buf[8], INTERLACE);
		if (!useGlobalColormap) {
			if (FUNC3(fd, bitPixel, localColorMap)) {
				FUNC8(im);
				return 0;
			}
			FUNC4(im, fd, width, height, localColorMap,
					FUNC0(buf[8], INTERLACE), &ZeroDataBlock);
		} else {
			if (!haveGlobalColormap) {
				FUNC8(im);
				return 0;
			}
			FUNC4(im, fd, width, height,
						ColorMap,
						FUNC0(buf[8], INTERLACE), &ZeroDataBlock);
		}
		if (Transparent != (-1)) {
			FUNC6(im, Transparent);
		}
		goto terminated;
	}

terminated:
	/* Terminator before any image was declared! */
	if (!im) {
		return 0;
	}
	/* Check for open colors at the end, so
	   we can reduce colorsTotal and ultimately
	   BitsPerPixel */
	for (i=((im->colorsTotal-1)); (i>=0); i--) {
		if (im->open[i]) {
			im->colorsTotal--;
		} else {
			break;
		}
	}
	if (!im->colorsTotal) {
		FUNC8(im);
		return 0;
	}
	return im;
}