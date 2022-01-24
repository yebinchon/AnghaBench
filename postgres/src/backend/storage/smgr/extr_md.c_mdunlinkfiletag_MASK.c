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
struct TYPE_3__ {int /*<<< orphan*/  rnode; } ;
typedef  TYPE_1__ FileTag ;

/* Variables and functions */
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 

int
FUNC4(const FileTag *ftag, char *path)
{
	char	   *p;

	/* Compute the path. */
	p = FUNC1(ftag->rnode, MAIN_FORKNUM);
	FUNC2(path, p, MAXPGPATH);
	FUNC0(p);

	/* Try to unlink the file. */
	return FUNC3(path);
}