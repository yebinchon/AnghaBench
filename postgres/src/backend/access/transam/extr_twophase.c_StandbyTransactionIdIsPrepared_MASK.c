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
struct TYPE_2__ {int /*<<< orphan*/  xid; } ;
typedef  TYPE_1__ TwoPhaseFileHeader ;
typedef  int /*<<< orphan*/  TransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ max_prepared_xacts ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

bool
FUNC5(TransactionId xid)
{
	char	   *buf;
	TwoPhaseFileHeader *hdr;
	bool		result;

	FUNC0(FUNC3(xid));

	if (max_prepared_xacts <= 0)
		return false;			/* nothing to do */

	/* Read and validate file */
	buf = FUNC1(xid, true);
	if (buf == NULL)
		return false;

	/* Check header also */
	hdr = (TwoPhaseFileHeader *) buf;
	result = FUNC2(hdr->xid, xid);
	FUNC4(buf);

	return result;
}