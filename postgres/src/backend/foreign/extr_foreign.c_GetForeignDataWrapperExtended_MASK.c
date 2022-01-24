#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int bits16 ;
struct TYPE_5__ {int /*<<< orphan*/  options; int /*<<< orphan*/  fdwvalidator; int /*<<< orphan*/  fdwhandler; int /*<<< orphan*/  fdwname; int /*<<< orphan*/  owner; int /*<<< orphan*/  fdwid; } ;
struct TYPE_4__ {int /*<<< orphan*/  fdwvalidator; int /*<<< orphan*/  fdwhandler; int /*<<< orphan*/  fdwname; int /*<<< orphan*/  fdwowner; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_foreign_data_wrapper ;
typedef  TYPE_2__ ForeignDataWrapper ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_foreign_data_wrapper_fdwoptions ; 
 int /*<<< orphan*/  ERROR ; 
 int FDW_MISSING_OK ; 
 int /*<<< orphan*/  FOREIGNDATAWRAPPEROID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

ForeignDataWrapper *
FUNC11(Oid fdwid, bits16 flags)
{
	Form_pg_foreign_data_wrapper fdwform;
	ForeignDataWrapper *fdw;
	Datum		datum;
	HeapTuple	tp;
	bool		isnull;

	tp = FUNC5(FOREIGNDATAWRAPPEROID, FUNC3(fdwid));

	if (!FUNC1(tp))
	{
		if ((flags & FDW_MISSING_OK) == 0)
			FUNC7(ERROR, "cache lookup failed for foreign-data wrapper %u", fdwid);
		return NULL;
	}

	fdwform = (Form_pg_foreign_data_wrapper) FUNC0(tp);

	fdw = (ForeignDataWrapper *) FUNC8(sizeof(ForeignDataWrapper));
	fdw->fdwid = fdwid;
	fdw->owner = fdwform->fdwowner;
	fdw->fdwname = FUNC9(FUNC2(fdwform->fdwname));
	fdw->fdwhandler = fdwform->fdwhandler;
	fdw->fdwvalidator = fdwform->fdwvalidator;

	/* Extract the fdwoptions */
	datum = FUNC6(FOREIGNDATAWRAPPEROID,
							tp,
							Anum_pg_foreign_data_wrapper_fdwoptions,
							&isnull);
	if (isnull)
		fdw->options = NIL;
	else
		fdw->options = FUNC10(datum);

	FUNC4(tp);

	return fdw;
}