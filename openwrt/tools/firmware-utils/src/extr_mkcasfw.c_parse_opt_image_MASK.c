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
struct image_desc {int /*<<< orphan*/ * file_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ERR_FATAL ; 
 int MAX_ARG_COUNT ; 
 int MAX_ARG_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct image_desc fs_image ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct image_desc kernel_image ; 
 int FUNC3 (char*,char*,char**) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

int
FUNC5(char ch, char *arg)
{
	char buf[MAX_ARG_LEN];
	char *argv[MAX_ARG_COUNT];
	int argc;
	char *p;
	struct image_desc *desc = NULL;
	int i;

	switch (ch) {
	case 'K':
		if (kernel_image.file_name) {
			FUNC1("only one kernel option allowed");
			break;
		}
		desc = &kernel_image;
		break;
	case 'F':
		if (fs_image.file_name) {
			FUNC1("only one fs option allowed");
			break;
		}
		desc = &fs_image;
		break;
	}

	if (!desc)
		return ERR_FATAL;

	argc = FUNC3(arg, buf, argv);

	i = 0;
	p = argv[i++];
	if (!FUNC2(p)) {
		desc->file_name = FUNC4(p);
		if (desc->file_name == NULL) {
			FUNC0("not enough memory");
			return ERR_FATAL;
		}
	} else {
		FUNC0("no file specified for option %c", ch);
		return ERR_FATAL;
	}

	return 0;
}