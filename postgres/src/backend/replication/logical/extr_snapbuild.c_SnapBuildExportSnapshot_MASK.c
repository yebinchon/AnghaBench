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
struct TYPE_4__ {int /*<<< orphan*/  xcnt; } ;
typedef  TYPE_1__* Snapshot ;
typedef  int /*<<< orphan*/  SnapBuild ;

/* Variables and functions */
 scalar_t__ CurrentResourceOwner ; 
 int /*<<< orphan*/  ERROR ; 
 int ExportInProgress ; 
 char* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  LOG ; 
 scalar_t__ SavedResourceOwnerDuringExport ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  XACT_REPEATABLE_READ ; 
 int /*<<< orphan*/  XactIsoLevel ; 
 int XactReadOnly ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

const char *
FUNC7(SnapBuild *builder)
{
	Snapshot	snap;
	char	   *snapname;

	if (FUNC1())
		FUNC4(ERROR, "cannot export a snapshot from within a transaction");

	if (SavedResourceOwnerDuringExport)
		FUNC4(ERROR, "can only export one snapshot at a time");

	SavedResourceOwnerDuringExport = CurrentResourceOwner;
	ExportInProgress = true;

	FUNC3();

	/* There doesn't seem to a nice API to set these */
	XactIsoLevel = XACT_REPEATABLE_READ;
	XactReadOnly = true;

	snap = FUNC2(builder);

	/*
	 * now that we've built a plain snapshot, make it active and use the
	 * normal mechanisms for exporting it
	 */
	snapname = FUNC0(snap);

	FUNC5(LOG,
			(FUNC6("exported logical decoding snapshot: \"%s\" with %u transaction ID",
						   "exported logical decoding snapshot: \"%s\" with %u transaction IDs",
						   snap->xcnt,
						   snapname, snap->xcnt)));
	return snapname;
}