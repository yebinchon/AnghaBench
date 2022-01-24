#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int id; int flags; int /*<<< orphan*/ * snapshot; scalar_t__ offset; int /*<<< orphan*/  subid; } ;
typedef  int /*<<< orphan*/ * Snapshot ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ LargeObjectDesc ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_SELECT ; 
 int /*<<< orphan*/  ACL_UPDATE ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int IFS_RDLOCK ; 
 int IFS_WRLOCK ; 
 int INV_READ ; 
 int INV_WRITE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TopTransactionResourceOwner ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  lo_compat_privileges ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

LargeObjectDesc *
FUNC10(Oid lobjId, int flags, MemoryContext mcxt)
{
	LargeObjectDesc *retval;
	Snapshot	snapshot = NULL;
	int			descflags = 0;

	/*
	 * Historically, no difference is made between (INV_WRITE) and (INV_WRITE
	 * | INV_READ), the caller being allowed to read the large object
	 * descriptor in either case.
	 */
	if (flags & INV_WRITE)
		descflags |= IFS_WRLOCK | IFS_RDLOCK;
	if (flags & INV_READ)
		descflags |= IFS_RDLOCK;

	if (descflags == 0)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC7("invalid flags for opening a large object: %d",
						flags)));

	/* Get snapshot.  If write is requested, use an instantaneous snapshot. */
	if (descflags & IFS_WRLOCK)
		snapshot = NULL;
	else
		snapshot = FUNC0();

	/* Can't use LargeObjectExists here because we need to specify snapshot */
	if (!FUNC8(lobjId, snapshot))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_UNDEFINED_OBJECT),
				 FUNC7("large object %u does not exist", lobjId)));

	/* Apply permission checks, again specifying snapshot */
	if ((descflags & IFS_RDLOCK) != 0)
	{
		if (!lo_compat_privileges &&
			FUNC9(lobjId,
											 FUNC2(),
											 ACL_SELECT,
											 snapshot) != ACLCHECK_OK)
			FUNC5(ERROR,
					(FUNC6(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC7("permission denied for large object %u",
							lobjId)));
	}
	if ((descflags & IFS_WRLOCK) != 0)
	{
		if (!lo_compat_privileges &&
			FUNC9(lobjId,
											 FUNC2(),
											 ACL_UPDATE,
											 snapshot) != ACLCHECK_OK)
			FUNC5(ERROR,
					(FUNC6(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC7("permission denied for large object %u",
							lobjId)));
	}

	/* OK to create a descriptor */
	retval = (LargeObjectDesc *) FUNC3(mcxt,
													sizeof(LargeObjectDesc));
	retval->id = lobjId;
	retval->subid = FUNC1();
	retval->offset = 0;
	retval->flags = descflags;

	/*
	 * We must register the snapshot in TopTransaction's resowner, because it
	 * must stay alive until the LO is closed rather than until the current
	 * portal shuts down.  Do this last to avoid uselessly leaking the
	 * snapshot if an error is thrown above.
	 */
	if (snapshot)
		snapshot = FUNC4(snapshot,
										   TopTransactionResourceOwner);
	retval->snapshot = snapshot;

	return retval;
}