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
struct TYPE_7__ {int sx; int sy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int MAX_XBM_LINE_SIZE ; 
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int) ; 
 TYPE_1__* FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 
 char* FUNC11 (char*,char) ; 

gdImagePtr FUNC12(FILE * fd)
{
	char fline[MAX_XBM_LINE_SIZE];
	char iname[MAX_XBM_LINE_SIZE];
	char *type;
	int value;
	unsigned int width = 0, height = 0;
	int fail = 0;
	int max_bit = 0;

	gdImagePtr im;
	int bytes = 0, i;
	int bit, x = 0, y = 0;
	int ch;
	char h[8];
	unsigned int b;

	FUNC7(fd);
	while (FUNC0(fline, MAX_XBM_LINE_SIZE, fd)) {
		fline[MAX_XBM_LINE_SIZE-1] = '\0';
		if (FUNC10(fline) == MAX_XBM_LINE_SIZE-1) {
			return 0;
		}
		if (FUNC8(fline, "#define %s %d", iname, &value) == 2) {
			if (!(type = FUNC11(iname, '_'))) {
				type = iname;
			} else {
				type++;
			}

			if (!FUNC9("width", type)) {
				width = (unsigned int) value;
			}
			if (!FUNC9("height", type)) {
				height = (unsigned int) value;
			}
		} else {
			if ( FUNC8(fline, "static unsigned char %s = {", iname) == 1
			  || FUNC8(fline, "static char %s = {", iname) == 1)
			{
				max_bit = 128;
			} else if (FUNC8(fline, "static unsigned short %s = {", iname) == 1
					|| FUNC8(fline, "static short %s = {", iname) == 1)
			{
				max_bit = 32768;
			}
			if (max_bit) {
				bytes = (width + 7) / 8 * height;
				if (!bytes) {
					return 0;
				}
				if (!(type = FUNC11(iname, '_'))) {
					type = iname;
				} else {
					type++;
				}
				if (!FUNC9("bits[]", type)) {
					break;
				}
			}
 		}
	}
	if (!bytes || !max_bit) {
		return 0;
	}

	if(!(im = FUNC2(width, height))) {
		return 0;
	}
	FUNC1(im, 255, 255, 255);
	FUNC1(im, 0, 0, 0);
	h[2] = '\0';
	h[4] = '\0';
	for (i = 0; i < bytes; i++) {
		while (1) {
			if ((ch=FUNC6(fd)) == EOF) {
				fail = 1;
				break;
			}
			if (ch == 'x') {
				break;
			}
		}
		if (fail) {
			break;
		}
		/* Get hex value */
		if ((ch=FUNC6(fd)) == EOF) {
			break;
		}
		h[0] = ch;
		if ((ch=FUNC6(fd)) == EOF) {
			break;
		}
		h[1] = ch;
		if (max_bit == 32768) {
			if ((ch=FUNC6(fd)) == EOF) {
				break;
			}
			h[2] = ch;
			if ((ch=FUNC6(fd)) == EOF) {
				break;
			}
			h[3] = ch;
		}
		if (FUNC8(h, "%x", &b) != 1) {
			FUNC5("invalid XBM");
			FUNC3(im);
			return 0;
		}
		for (bit = 1; bit <= max_bit; bit = bit << 1) {
			FUNC4(im, x++, y, (b & bit) ? 1 : 0);
			if (x == im->sx) {
				x = 0;
				y++;
				if (y == im->sy) {
					return im;
				}
				break;
			}
		}
	}

	FUNC5("EOF before image was complete");
	FUNC3(im);
	return 0;
}