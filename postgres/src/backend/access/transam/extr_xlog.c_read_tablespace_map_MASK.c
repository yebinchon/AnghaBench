#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* path; void* oid; } ;
typedef  TYPE_1__ tablespaceinfo ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ENOENT ; 
 int EOF ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  TABLESPACE_MAP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int) ; 
 void* FUNC10 (char*) ; 
 int FUNC11 (char*,char*,char*,int*) ; 

__attribute__((used)) static bool
FUNC12(List **tablespaces)
{
	tablespaceinfo *ti;
	FILE	   *lfp;
	char		tbsoid[MAXPGPATH];
	char	   *tbslinkpath;
	char		str[MAXPGPATH];
	int			ch,
				prev_ch = -1,
				i = 0,
				n;

	/*
	 * See if tablespace_map file is present
	 */
	lfp = FUNC0(TABLESPACE_MAP, "r");
	if (!lfp)
	{
		if (errno != ENOENT)
			FUNC2(FATAL,
					(FUNC4(),
					 FUNC5("could not read file \"%s\": %m",
							TABLESPACE_MAP)));
		return false;			/* it's not there, all is fine */
	}

	/*
	 * Read and parse the link name and path lines from tablespace_map file
	 * (this code is pretty crude, but we are not expecting any variability in
	 * the file format).  While taking backup we embed escape character '\\'
	 * before newline in tablespace path, so that during reading of
	 * tablespace_map file, we could distinguish newline in tablespace path
	 * and end of line.  Now while reading tablespace_map file, remove the
	 * escape character that has been added in tablespace path during backup.
	 */
	while ((ch = FUNC7(lfp)) != EOF)
	{
		if ((ch == '\n' || ch == '\r') && prev_ch != '\\')
		{
			str[i] = '\0';
			if (FUNC11(str, "%s %n", tbsoid, &n) != 1)
				FUNC2(FATAL,
						(FUNC3(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
						 FUNC5("invalid data in file \"%s\"", TABLESPACE_MAP)));
			tbslinkpath = str + n;
			i = 0;

			ti = FUNC9(sizeof(tablespaceinfo));
			ti->oid = FUNC10(tbsoid);
			ti->path = FUNC10(tbslinkpath);

			*tablespaces = FUNC8(*tablespaces, ti);
			continue;
		}
		else if ((ch == '\n' || ch == '\r') && prev_ch == '\\')
			str[i - 1] = ch;
		else
			str[i++] = ch;
		prev_ch = ch;
	}

	if (FUNC6(lfp) || FUNC1(lfp))
		FUNC2(FATAL,
				(FUNC4(),
				 FUNC5("could not read file \"%s\": %m",
						TABLESPACE_MAP)));

	return true;
}