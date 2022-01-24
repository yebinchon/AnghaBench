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
typedef  int uid_t ;
typedef  int time_t ;
typedef  int pgoff_t ;
typedef  int mode_t ;
typedef  int gid_t ;
typedef  enum tarError { ____Placeholder_tarError } tarError ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int TAR_NAME_TOO_LONG ; 
 int TAR_OK ; 
 int TAR_SYMLINK_TOO_LONG ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int FUNC7 (char const*) ; 
 int FUNC8 (char*) ; 

enum tarError
FUNC9(char *h, const char *filename, const char *linktarget,
				pgoff_t size, mode_t mode, uid_t uid, gid_t gid, time_t mtime)
{
	if (FUNC7(filename) > 99)
		return TAR_NAME_TOO_LONG;

	if (linktarget && FUNC7(linktarget) > 99)
		return TAR_SYMLINK_TOO_LONG;

	FUNC3(h, 0, 512);			/* assume tar header size */

	/* Name 100 */
	FUNC6(&h[0], filename, 100);
	if (linktarget != NULL || FUNC1(mode))
	{
		/*
		 * We only support symbolic links to directories, and this is
		 * indicated in the tar format by adding a slash at the end of the
		 * name, the same as for regular directories.
		 */
		int			flen = FUNC7(filename);

		flen = FUNC0(flen, 99);
		h[flen] = '/';
		h[flen + 1] = '\0';
	}

	/* Mode 8 - this doesn't include the file type bits (S_IFMT)  */
	FUNC4(&h[100], 8, (mode & 07777));

	/* User ID 8 */
	FUNC4(&h[108], 8, uid);

	/* Group 8 */
	FUNC4(&h[116], 8, gid);

	/* File size 12 */
	if (linktarget != NULL || FUNC1(mode))
		/* Symbolic link or directory has size zero */
		FUNC4(&h[124], 12, 0);
	else
		FUNC4(&h[124], 12, size);

	/* Mod Time 12 */
	FUNC4(&h[136], 12, mtime);

	/* Checksum 8 cannot be calculated until we've filled all other fields */

	if (linktarget != NULL)
	{
		/* Type - Symbolic link */
		h[156] = '2';
		/* Link Name 100 */
		FUNC6(&h[157], linktarget, 100);
	}
	else if (FUNC1(mode))
	{
		/* Type - directory */
		h[156] = '5';
	}
	else
	{
		/* Type - regular file */
		h[156] = '0';
	}

	/* Magic 6 */
	FUNC5(&h[257], "ustar");

	/* Version 2 */
	FUNC2(&h[263], "00", 2);

	/* User 32 */
	/* XXX: Do we need to care about setting correct username? */
	FUNC6(&h[265], "postgres", 32);

	/* Group 32 */
	/* XXX: Do we need to care about setting correct group name? */
	FUNC6(&h[297], "postgres", 32);

	/* Major Dev 8 */
	FUNC4(&h[329], 8, 0);

	/* Minor Dev 8 */
	FUNC4(&h[337], 8, 0);

	/* Prefix 155 - not used, leave as nulls */

	/* Finally, compute and insert the checksum */
	FUNC4(&h[148], 8, FUNC8(h));

	return TAR_OK;
}