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
struct gfxinfo {unsigned int width; unsigned int height; } ;
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
 int IMAGE_FILETYPE_XBM ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static int FUNC8(php_stream *stream, struct gfxinfo **result)
{
    char *fline;
    char *iname;
    char *type;
    int value;
    unsigned int width = 0, height = 0;

	if (result) {
		*result = NULL;
	}
	if (FUNC4(stream)) {
		return 0;
	}
	while ((fline=FUNC3(stream, NULL, 0)) != NULL) {
		iname = FUNC2(fline); /* simple way to get necessary buffer of required size */
		if (FUNC5(fline, "#define %s %d", iname, &value) == 2) {
			if (!(type = FUNC7(iname, '_'))) {
				type = iname;
			} else {
				type++;
			}

			if (!FUNC6("width", type)) {
				width = (unsigned int) value;
				if (height) {
					FUNC1(iname);
					break;
				}
			}
			if (!FUNC6("height", type)) {
				height = (unsigned int) value;
				if (width) {
					FUNC1(iname);
					break;
				}
			}
		}
		FUNC1(fline);
		FUNC1(iname);
	}
	if (fline) {
		FUNC1(fline);
	}

	if (width && height) {
		if (result) {
			*result = (struct gfxinfo *) FUNC0(1, sizeof(struct gfxinfo));
			(*result)->width = width;
			(*result)->height = height;
		}
		return IMAGE_FILETYPE_XBM;
	}

	return 0;
}