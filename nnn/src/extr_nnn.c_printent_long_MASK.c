#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/  timebuf ;
struct entry {int flags; int mode; int blocks; int size; int /*<<< orphan*/  name; int /*<<< orphan*/  t; } ;
struct TYPE_2__ {int /*<<< orphan*/  blkorder; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_REVERSE ; 
 int FILE_SELECTED ; 
#define  S_IFBLK 134 
#define  S_IFCHR 133 
#define  S_IFDIR 132 
#define  S_IFIFO 131 
#define  S_IFLNK 130 
 int S_IFMT ; 
#define  S_IFREG 129 
#define  S_IFSOCK 128 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int blk_shift ; 
 TYPE_1__ cfg ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(const struct entry *ent, int sel, uint namecols)
{
	char timebuf[24], permbuf[4], ind1 = '\0', ind2[] = "\0\0";
	const char cp = (ent->flags & FILE_SELECTED) ? '+' : ' ';

	/* Timestamp */
	FUNC7(timebuf, sizeof(timebuf), "%F %R", FUNC4(&ent->t));
	timebuf[sizeof(timebuf)-1] = '\0';

	/* Permissions */
	permbuf[0] = '0' + ((ent->mode >> 6) & 7);
	permbuf[1] = '0' + ((ent->mode >> 3) & 7);
	permbuf[2] = '0' + (ent->mode & 7);
	permbuf[3] = '\0';

	/* Add a column if no indicator is needed */
	if (FUNC0(ent->mode) && !(ent->mode & 0100))
		++namecols;

	/* Trim escape chars from name */
	const char *pname = FUNC8(ent->name, namecols, NULL);

	/* Directories are always shown on top */
	FUNC6(ent->flags);

	if (sel)
		FUNC2(A_REVERSE);

	switch (ent->mode & S_IFMT) {
	case S_IFREG:
		if (ent->mode & 0100)
			FUNC5("%c%-16.16s  %s %8.8s* %s*\n", cp, timebuf, permbuf,
			       FUNC3(cfg.blkorder ? ent->blocks << blk_shift : ent->size), pname);
		else
			FUNC5("%c%-16.16s  %s %8.8s  %s\n", cp, timebuf, permbuf,
			       FUNC3(cfg.blkorder ? ent->blocks << blk_shift : ent->size), pname);
		break;
	case S_IFDIR:
		FUNC5("%c%-16.16s  %s %8.8s  %s/\n", cp, timebuf, permbuf,
		       FUNC3(cfg.blkorder ? ent->blocks << blk_shift : ent->size), pname);
		break;
	case S_IFLNK:
		FUNC5("%c%-16.16s  %s        @  %s@\n", cp, timebuf, permbuf, pname);
		break;
	case S_IFSOCK:
		ind1 = ind2[0] = '='; // fallthrough
	case S_IFIFO:
		if (!ind1)
			ind1 = ind2[0] = '|'; // fallthrough
	case S_IFBLK:
		if (!ind1)
			ind1 = 'b'; // fallthrough
	case S_IFCHR:
		if (!ind1)
			ind1 = 'c'; // fallthrough
	default:
		if (!ind1)
			ind1 = ind2[0] = '?';
		FUNC5("%c%-16.16s  %s        %c  %s%s\n", cp, timebuf, permbuf, ind1, pname, ind2);
		break;
	}

	if (sel)
		FUNC1(A_REVERSE);
}