#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  gdImagePtr ;
typedef  int /*<<< orphan*/  gdIOCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 size_t FUNC10 (char*) ; 
 char* FUNC11 (char*,char) ; 

void FUNC12(gdImagePtr image, char* file_name, int fg, gdIOCtx * out)
{
	int x, y, c, b, sx, sy, p;
	char *name, *f;
	size_t i, l;

	name = file_name;
	if ((f = FUNC11(name, '/')) != NULL) name = f+1;
	if ((f = FUNC11(name, '\\')) != NULL) name = f+1;
	name = FUNC1(name);
	if ((f = FUNC11(name, '.')) != NULL && !FUNC9(f, ".XBM")) *f = '\0';
	if ((l = FUNC10(name)) == 0) {
		FUNC0(name);
		name = FUNC1("image");
	} else {
		for (i=0; i<l; i++) {
			/* only in C-locale isalnum() would work */
			if (!FUNC8(name[i]) && !FUNC7(name[i]) && !FUNC6(name[i])) {
				name[i] = '_';
			}
		}
	}

	FUNC2(out, "#define %s_width %d\n", name, FUNC4(image));
	FUNC2(out, "#define %s_height %d\n", name, FUNC5(image));
	FUNC2(out, "static unsigned char %s_bits[] = {\n  ", name);

	FUNC0(name);

	b = 1;
	p = 0;
	c = 0;
	sx = FUNC4(image);
	sy = FUNC5(image);
	for (y = 0; y < sy; y++) {
		for (x = 0; x < sx; x++) {
			if (FUNC3(image, x, y) == fg) {
				c |= b;
			}
			if ((b == 128) || (x == sx - 1)) {
				b = 1;
				if (p) {
					FUNC2(out, ", ");
					if (!(p%12)) {
						FUNC2(out, "\n  ");
						p = 12;
					}
				}
				p++;
				FUNC2(out, "0x%02X", c);
				c = 0;
			} else {
				b <<= 1;
			}
		}
	}
	FUNC2(out, "};\n");
}