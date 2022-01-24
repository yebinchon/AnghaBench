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
struct stat {int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_size; } ;
typedef  int int64 ;
typedef  int /*<<< orphan*/  h ;
typedef  enum tarError { ____Placeholder_tarError } tarError ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
#define  TAR_NAME_TOO_LONG 130 
#define  TAR_OK 129 
#define  TAR_SYMLINK_TOO_LONG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char,char*,int) ; 
 int FUNC4 (char*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64
FUNC5(const char *filename, const char *linktarget,
				struct stat *statbuf, bool sizeonly)
{
	char		h[512];
	enum tarError rc;

	if (!sizeonly)
	{
		rc = FUNC4(h, filename, linktarget, statbuf->st_size,
							 statbuf->st_mode, statbuf->st_uid, statbuf->st_gid,
							 statbuf->st_mtime);

		switch (rc)
		{
			case TAR_OK:
				break;
			case TAR_NAME_TOO_LONG:
				FUNC1(ERROR,
						(FUNC2("file name too long for tar format: \"%s\"",
								filename)));
				break;
			case TAR_SYMLINK_TOO_LONG:
				FUNC1(ERROR,
						(FUNC2("symbolic link target too long for tar format: "
								"file name \"%s\", target \"%s\"",
								filename, linktarget)));
				break;
			default:
				FUNC0(ERROR, "unrecognized tar error: %d", rc);
		}

		FUNC3('d', h, sizeof(h));
	}

	return sizeof(h);
}