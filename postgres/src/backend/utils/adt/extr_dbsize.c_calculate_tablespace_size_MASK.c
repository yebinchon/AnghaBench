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
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  pathname ;
typedef  int int64 ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  DIR ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_CREATE ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ DEFAULTTABLESPACE_OID ; 
 int /*<<< orphan*/  DEFAULT_ROLE_READ_ALL_STATS ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ GLOBALTABLESPACE_OID ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int MAXPGPATH ; 
 scalar_t__ MyDatabaseTableSpace ; 
 int /*<<< orphan*/  OBJECT_TABLESPACE ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 char* TABLESPACE_VERSION_DIRECTORY ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,...) ; 
 scalar_t__ FUNC15 (char*,struct stat*) ; 
 scalar_t__ FUNC16 (char*,char*) ; 

__attribute__((used)) static int64
FUNC17(Oid tblspcOid)
{
	char		tblspcPath[MAXPGPATH];
	char		pathname[MAXPGPATH * 2];
	int64		totalsize = 0;
	DIR		   *dirdesc;
	struct dirent *direntry;
	AclResult	aclresult;

	/*
	 * User must be a member of pg_read_all_stats or have CREATE privilege for
	 * target tablespace, either explicitly granted or implicitly because it
	 * is default for current database.
	 */
	if (tblspcOid != MyDatabaseTableSpace &&
		!FUNC12(FUNC3(), DEFAULT_ROLE_READ_ALL_STATS))
	{
		aclresult = FUNC13(tblspcOid, FUNC3(), ACL_CREATE);
		if (aclresult != ACLCHECK_OK)
			FUNC6(aclresult, OBJECT_TABLESPACE,
						   FUNC11(tblspcOid));
	}

	if (tblspcOid == DEFAULTTABLESPACE_OID)
		FUNC14(tblspcPath, MAXPGPATH, "base");
	else if (tblspcOid == GLOBALTABLESPACE_OID)
		FUNC14(tblspcPath, MAXPGPATH, "global");
	else
		FUNC14(tblspcPath, MAXPGPATH, "pg_tblspc/%u/%s", tblspcOid,
				 TABLESPACE_VERSION_DIRECTORY);

	dirdesc = FUNC0(tblspcPath);

	if (!dirdesc)
		return -1;

	while ((direntry = FUNC4(dirdesc, tblspcPath)) != NULL)
	{
		struct stat fst;

		FUNC1();

		if (FUNC16(direntry->d_name, ".") == 0 ||
			FUNC16(direntry->d_name, "..") == 0)
			continue;

		FUNC14(pathname, sizeof(pathname), "%s/%s", tblspcPath, direntry->d_name);

		if (FUNC15(pathname, &fst) < 0)
		{
			if (errno == ENOENT)
				continue;
			else
				FUNC8(ERROR,
						(FUNC9(),
						 FUNC10("could not stat file \"%s\": %m", pathname)));
		}

		if (FUNC5(fst.st_mode))
			totalsize += FUNC7(pathname);

		totalsize += fst.st_size;
	}

	FUNC2(dirdesc);

	return totalsize;
}