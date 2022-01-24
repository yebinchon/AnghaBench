#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  scalar_t__ TransactionId ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidRepOriginId ; 
 int /*<<< orphan*/  InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (scalar_t__,int /*<<< orphan*/ ,int,int,int) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TWOPHASE_DIR ; 
 int /*<<< orphan*/  TwoPhaseStateLock ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void
FUNC10(void)
{
	DIR		   *cldir;
	struct dirent *clde;

	FUNC2(TwoPhaseStateLock, LW_EXCLUSIVE);
	cldir = FUNC0(TWOPHASE_DIR);
	while ((clde = FUNC6(cldir, TWOPHASE_DIR)) != NULL)
	{
		if (FUNC7(clde->d_name) == 8 &&
			FUNC8(clde->d_name, "0123456789ABCDEF") == 8)
		{
			TransactionId xid;
			char	   *buf;

			xid = (TransactionId) FUNC9(clde->d_name, NULL, 16);

			buf = FUNC5(xid, InvalidXLogRecPtr,
										true, false, false);
			if (buf == NULL)
				continue;

			FUNC4(buf, InvalidXLogRecPtr,
						   InvalidXLogRecPtr, InvalidRepOriginId);
		}
	}
	FUNC3(TwoPhaseStateLock);
	FUNC1(cldir);
}