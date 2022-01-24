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
struct TYPE_5__ {scalar_t__ lo_buf_used; int loFd; scalar_t__ connection; scalar_t__ writingBlob; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

void
FUNC3(ArchiveHandle *AH, Oid oid)
{
	if (AH->lo_buf_used > 0)
	{
		/* Write remaining bytes from the LO buffer */
		FUNC1(AH);
	}

	AH->writingBlob = 0;

	if (AH->connection)
	{
		FUNC2(AH->connection, AH->loFd);
		AH->loFd = -1;
	}
	else
	{
		FUNC0(AH, "SELECT pg_catalog.lo_close(0);\n\n");
	}
}