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
struct TYPE_3__ {char** dirname; int /*<<< orphan*/ * dirdesc; scalar_t__ depth; scalar_t__ baselen; } ;
typedef  TYPE_1__ pg_tzenum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*) ; 

pg_tzenum *
FUNC8(void)
{
	pg_tzenum  *ret = (pg_tzenum *) FUNC4(sizeof(pg_tzenum));
	char	   *startdir = FUNC6(FUNC5());

	ret->baselen = FUNC7(startdir) + 1;
	ret->depth = 0;
	ret->dirname[0] = startdir;
	ret->dirdesc[0] = FUNC0(startdir);
	if (!ret->dirdesc[0])
		FUNC1(ERROR,
				(FUNC2(),
				 FUNC3("could not open directory \"%s\": %m", startdir)));
	return ret;
}