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
typedef  int /*<<< orphan*/  TocEntry ;
typedef  int /*<<< orphan*/  T_Action ;
typedef  int /*<<< orphan*/  DumpId ;
typedef  int /*<<< orphan*/  ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  ACT_DUMP ; 
 int /*<<< orphan*/  ACT_RESTORE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int /*<<< orphan*/ *,int*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(ArchiveHandle *AH, TocEntry **te, T_Action *act,
				   const char *msg)
{
	DumpId		dumpId;
	int			nBytes;

	if (FUNC3(msg, "DUMP "))
	{
		*act = ACT_DUMP;
		FUNC4(msg, "DUMP %d%n", &dumpId, &nBytes);
		FUNC0(nBytes == FUNC5(msg));
		*te = FUNC2(AH, dumpId);
		FUNC0(*te != NULL);
	}
	else if (FUNC3(msg, "RESTORE "))
	{
		*act = ACT_RESTORE;
		FUNC4(msg, "RESTORE %d%n", &dumpId, &nBytes);
		FUNC0(nBytes == FUNC5(msg));
		*te = FUNC2(AH, dumpId);
		FUNC0(*te != NULL);
	}
	else
		FUNC1("unrecognized command received from master: \"%s\"",
			  msg);
}