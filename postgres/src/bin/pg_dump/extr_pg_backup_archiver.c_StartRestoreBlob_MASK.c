#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ version; int loFd; int writingBlob; scalar_t__ connection; scalar_t__ lo_buf_used; int /*<<< orphan*/  blobCount; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  INV_WRITE ; 
 scalar_t__ K_VERS_1_12 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 

void
FUNC7(ArchiveHandle *AH, Oid oid, bool drop)
{
	bool		old_blob_style = (AH->version < K_VERS_1_12);
	Oid			loOid;

	AH->blobCount++;

	/* Initialize the LO Buffer */
	AH->lo_buf_used = 0;

	FUNC6("restoring large object with OID %u", oid);

	/* With an old archive we must do drop and create logic here */
	if (old_blob_style && drop)
		FUNC0(AH, oid);

	if (AH->connection)
	{
		if (old_blob_style)
		{
			loOid = FUNC4(AH->connection, oid);
			if (loOid == 0 || loOid != oid)
				FUNC3("could not create large object %u: %s",
					  oid, FUNC1(AH->connection));
		}
		AH->loFd = FUNC5(AH->connection, oid, INV_WRITE);
		if (AH->loFd == -1)
			FUNC3("could not open large object %u: %s",
				  oid, FUNC1(AH->connection));
	}
	else
	{
		if (old_blob_style)
			FUNC2(AH, "SELECT pg_catalog.lo_open(pg_catalog.lo_create('%u'), %d);\n",
					 oid, INV_WRITE);
		else
			FUNC2(AH, "SELECT pg_catalog.lo_open('%u', %d);\n",
					 oid, INV_WRITE);
	}

	AH->writingBlob = 1;
}