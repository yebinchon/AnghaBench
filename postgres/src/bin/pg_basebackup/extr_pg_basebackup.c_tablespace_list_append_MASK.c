#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* old_dir; char* new_dir; struct TYPE_3__* next; } ;
typedef  TYPE_1__ TablespaceListCell ;
struct TYPE_4__ {TYPE_1__* tail; TYPE_1__* head; } ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_2__ tablespace_dirs ; 

__attribute__((used)) static void
FUNC5(const char *arg)
{
	TablespaceListCell *cell = (TablespaceListCell *) FUNC4(sizeof(TablespaceListCell));
	char	   *dst;
	char	   *dst_ptr;
	const char *arg_ptr;

	dst_ptr = dst = cell->old_dir;
	for (arg_ptr = arg; *arg_ptr; arg_ptr++)
	{
		if (dst_ptr - dst >= MAXPGPATH)
		{
			FUNC3("directory name too long");
			FUNC1(1);
		}

		if (*arg_ptr == '\\' && *(arg_ptr + 1) == '=')
			;					/* skip backslash escaping = */
		else if (*arg_ptr == '=' && (arg_ptr == arg || *(arg_ptr - 1) != '\\'))
		{
			if (*cell->new_dir)
			{
				FUNC3("multiple \"=\" signs in tablespace mapping");
				FUNC1(1);
			}
			else
				dst = dst_ptr = cell->new_dir;
		}
		else
			*dst_ptr++ = *arg_ptr;
	}

	if (!*cell->old_dir || !*cell->new_dir)
	{
		FUNC3("invalid tablespace mapping format \"%s\", must be \"OLDDIR=NEWDIR\"", arg);
		FUNC1(1);
	}

	/*
	 * This check isn't absolutely necessary.  But all tablespaces are created
	 * with absolute directories, so specifying a non-absolute path here would
	 * just never match, possibly confusing users.  It's also good to be
	 * consistent with the new_dir check.
	 */
	if (!FUNC2(cell->old_dir))
	{
		FUNC3("old directory is not an absolute path in tablespace mapping: %s",
					 cell->old_dir);
		FUNC1(1);
	}

	if (!FUNC2(cell->new_dir))
	{
		FUNC3("new directory is not an absolute path in tablespace mapping: %s",
					 cell->new_dir);
		FUNC1(1);
	}

	/*
	 * Comparisons done with these values should involve similarly
	 * canonicalized path values.  This is particularly sensitive on Windows
	 * where path values may not necessarily use Unix slashes.
	 */
	FUNC0(cell->old_dir);
	FUNC0(cell->new_dir);

	if (tablespace_dirs.tail)
		tablespace_dirs.tail->next = cell;
	else
		tablespace_dirs.head = cell;
	tablespace_dirs.tail = cell;
}