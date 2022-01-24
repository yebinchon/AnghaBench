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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

int
FUNC4(const char *dir)
{
	int			result = 1;
	DIR		   *chkdir;
	struct dirent *file;
	bool		dot_found = false;
	bool		mount_found = false;
	int			readdir_errno;

	chkdir = FUNC1(dir);
	if (chkdir == NULL)
		return (errno == ENOENT) ? 0 : -1;

	while (errno = 0, (file = FUNC2(chkdir)) != NULL)
	{
		if (FUNC3(".", file->d_name) == 0 ||
			FUNC3("..", file->d_name) == 0)
		{
			/* skip this and parent directory */
			continue;
		}
#ifndef WIN32
		/* file starts with "." */
		else if (file->d_name[0] == '.')
		{
			dot_found = true;
		}
		/* lost+found directory */
		else if (FUNC3("lost+found", file->d_name) == 0)
		{
			mount_found = true;
		}
#endif
		else
		{
			result = 4;			/* not empty */
			break;
		}
	}

	if (errno)
		result = -1;			/* some kind of I/O error? */

	/* Close chkdir and avoid overwriting the readdir errno on success */
	readdir_errno = errno;
	if (FUNC0(chkdir))
		result = -1;			/* error executing closedir */
	else
		errno = readdir_errno;

	/* We report on mount point if we find a lost+found directory */
	if (result == 1 && mount_found)
		result = 3;

	/* We report on dot-files if we _only_ find dot files */
	if (result == 1 && dot_found)
		result = 2;

	return result;
}