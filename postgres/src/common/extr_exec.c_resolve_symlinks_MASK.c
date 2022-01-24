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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  link_buf ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC9 (char*,struct stat*) ; 
 int FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC13(char *path)
{
#ifdef HAVE_READLINK
	struct stat buf;
	char		orig_wd[MAXPGPATH],
				link_buf[MAXPGPATH];
	char	   *fname;

	/*
	 * To resolve a symlink properly, we have to chdir into its directory and
	 * then chdir to where the symlink points; otherwise we may fail to
	 * resolve relative links correctly (consider cases involving mount
	 * points, for example).  After following the final symlink, we use
	 * getcwd() to figure out where the heck we're at.
	 *
	 * One might think we could skip all this if path doesn't point to a
	 * symlink to start with, but that's wrong.  We also want to get rid of
	 * any directory symlinks that are present in the given path. We expect
	 * getcwd() to give us an accurate, symlink-free path.
	 */
	if (!getcwd(orig_wd, MAXPGPATH))
	{
		log_error(errcode_for_file_access(),
				  _("could not identify current directory: %m"));
		return -1;
	}

	for (;;)
	{
		char	   *lsep;
		int			rllen;

		lsep = last_dir_separator(path);
		if (lsep)
		{
			*lsep = '\0';
			if (chdir(path) == -1)
			{
				log_error(errcode_for_file_access(),
						  _("could not change directory to \"%s\": %m"), path);
				return -1;
			}
			fname = lsep + 1;
		}
		else
			fname = path;

		if (lstat(fname, &buf) < 0 ||
			!S_ISLNK(buf.st_mode))
			break;

		errno = 0;
		rllen = readlink(fname, link_buf, sizeof(link_buf));
		if (rllen < 0 || rllen >= sizeof(link_buf))
		{
			log_error(errcode_for_file_access(),
					  _("could not read symbolic link \"%s\": %m"), fname);
			return -1;
		}
		link_buf[rllen] = '\0';
		strcpy(path, link_buf);
	}

	/* must copy final component out of 'path' temporarily */
	strlcpy(link_buf, fname, sizeof(link_buf));

	if (!getcwd(path, MAXPGPATH))
	{
		log_error(errcode_for_file_access(),
				  _("could not identify current directory: %m"));
		return -1;
	}
	join_path_components(path, path, link_buf);
	canonicalize_path(path);

	if (chdir(orig_wd) == -1)
	{
		log_error(errcode_for_file_access(),
				  _("could not change directory to \"%s\": %m"), orig_wd);
		return -1;
	}
#endif							/* HAVE_READLINK */

	return 0;
}