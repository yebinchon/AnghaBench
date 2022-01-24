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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int dirty; TYPE_1__ data; } ;
typedef  TYPE_2__ ReplicationSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERROR ; 
 int MAXPGPATH ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*) ; 
 scalar_t__ FUNC13 (char*,struct stat*) ; 

__attribute__((used)) static void
FUNC14(ReplicationSlot *slot)
{
	char		tmppath[MAXPGPATH];
	char		path[MAXPGPATH];
	struct stat st;

	/*
	 * No need to take out the io_in_progress_lock, nobody else can see this
	 * slot yet, so nobody else will write. We're reusing SaveSlotToPath which
	 * takes out the lock, if we'd take the lock here, we'd deadlock.
	 */

	FUNC12(path, "pg_replslot/%s", FUNC2(slot->data.name));
	FUNC12(tmppath, "pg_replslot/%s.tmp", FUNC2(slot->data.name));

	/*
	 * It's just barely possible that some previous effort to create or drop a
	 * slot with this name left a temp directory lying around. If that seems
	 * to be the case, try to remove it.  If the rmtree() fails, we'll error
	 * out at the MakePGDirectory() below, so we don't bother checking
	 * success.
	 */
	if (FUNC13(tmppath, &st) == 0 && FUNC4(st.st_mode))
		FUNC11(tmppath, true);

	/* Create and fsync the temporary slot directory. */
	if (FUNC1(tmppath) < 0)
		FUNC6(ERROR,
				(FUNC7(),
				 FUNC8("could not create directory \"%s\": %m",
						tmppath)));
	FUNC9(tmppath, true);

	/* Write the actual state file. */
	slot->dirty = true;			/* signal that we really need to write */
	FUNC5(slot, tmppath, ERROR);

	/* Rename the directory into place. */
	if (FUNC10(tmppath, path) != 0)
		FUNC6(ERROR,
				(FUNC7(),
				 FUNC8("could not rename file \"%s\" to \"%s\": %m",
						tmppath, path)));

	/*
	 * If we'd now fail - really unlikely - we wouldn't know whether this slot
	 * would persist after an OS crash or not - so, force a restart. The
	 * restart would try to fsync this again till it works.
	 */
	FUNC3();

	FUNC9(path, true);
	FUNC9("pg_replslot", true);

	FUNC0();
}