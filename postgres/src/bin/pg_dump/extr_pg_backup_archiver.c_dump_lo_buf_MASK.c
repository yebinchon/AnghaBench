#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t lo_buf_used; int writingBlob; scalar_t__ lo_buf; int /*<<< orphan*/  loFd; scalar_t__ connection; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char const*,size_t,TYPE_2__*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,unsigned long) ; 
 size_t FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 

__attribute__((used)) static void
FUNC8(ArchiveHandle *AH)
{
	if (AH->connection)
	{
		size_t		res;

		res = FUNC5(AH->connection, AH->loFd, AH->lo_buf, AH->lo_buf_used);
		FUNC7(FUNC6("wrote %lu byte of large object data (result = %lu)",
							  "wrote %lu bytes of large object data (result = %lu)",
							  AH->lo_buf_used),
					 (unsigned long) AH->lo_buf_used, (unsigned long) res);
		if (res != AH->lo_buf_used)
			FUNC4("could not write to large object (result: %lu, expected: %lu)",
				  (unsigned long) res, (unsigned long) AH->lo_buf_used);
	}
	else
	{
		PQExpBuffer buf = FUNC2();

		FUNC1(buf,
							  (const unsigned char *) AH->lo_buf,
							  AH->lo_buf_used,
							  AH);

		/* Hack: turn off writingBlob so ahwrite doesn't recurse to here */
		AH->writingBlob = 0;
		FUNC0(AH, "SELECT pg_catalog.lowrite(0, %s);\n", buf->data);
		AH->writingBlob = 1;

		FUNC3(buf);
	}
	AH->lo_buf_used = 0;
}