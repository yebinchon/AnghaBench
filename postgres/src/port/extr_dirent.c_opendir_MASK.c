#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ d_reclen; scalar_t__ d_ino; } ;
struct TYPE_6__ {char* dirname; TYPE_1__ ret; int /*<<< orphan*/  handle; } ;
typedef  int DWORD ;
typedef  TYPE_2__ DIR ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOTDIR ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FUNC0 (char const*) ; 
 int INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*) ; 

DIR *
FUNC6(const char *dirname)
{
	DWORD		attr;
	DIR		   *d;

	/* Make sure it is a directory */
	attr = FUNC0(dirname);
	if (attr == INVALID_FILE_ATTRIBUTES)
	{
		errno = ENOENT;
		return NULL;
	}
	if ((attr & FILE_ATTRIBUTE_DIRECTORY) != FILE_ATTRIBUTE_DIRECTORY)
	{
		errno = ENOTDIR;
		return NULL;
	}

	d = FUNC2(sizeof(DIR));
	if (!d)
	{
		errno = ENOMEM;
		return NULL;
	}
	d->dirname = FUNC2(FUNC5(dirname) + 4);
	if (!d->dirname)
	{
		errno = ENOMEM;
		FUNC1(d);
		return NULL;
	}
	FUNC4(d->dirname, dirname);
	if (d->dirname[FUNC5(d->dirname) - 1] != '/' &&
		d->dirname[FUNC5(d->dirname) - 1] != '\\')
		FUNC3(d->dirname, "\\");	/* Append backslash if not already there */
	FUNC3(d->dirname, "*");	/* Search for entries named anything */
	d->handle = INVALID_HANDLE_VALUE;
	d->ret.d_ino = 0;			/* no inodes on win32 */
	d->ret.d_reclen = 0;		/* not used on win32 */

	return d;
}