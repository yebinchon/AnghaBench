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

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,char**,char*) ; 
 int lflag ; 
 int mflag ; 
 int /*<<< orphan*/  now ; 
 scalar_t__ optind ; 
 int pplan ; 
 int sflag ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char**) ; 

int
FUNC6(int argc, char **argv)
{
	int ch;

	while ((ch = FUNC2(argc, argv, "lmps")) != EOF)
		switch(ch) {
		case 'l':
			lflag = 1;		/* long format */
			break;
		case 'm':
			mflag = 1;		/* force exact match of names */
			break;
		case 'p':
			pplan = 1;		/* don't show .plan/.project */
			break;
		case 's':
			sflag = 1;		/* short format */
			break;
		case '?':
		default:
			(void)FUNC1(stderr,
			    "usage: finger [-lmps] login [...]\n");
			FUNC0(1);
		}
	argc -= optind;
	argv += optind;

	(void)FUNC3(&now);
	if (!*argv) {
		FUNC4();
	} else {
		FUNC5(argc, argv);
		/*
		 * Assign explicit "large" format if names given and -s not
		 * explicitly stated.  Force the -l AFTER we get names so any
		 * remote finger attempts specified won't be mishandled.
		 */
		if (!sflag)
			lflag = 1;	/* if -s not explicit, force -l */
	}
	return 0;
}