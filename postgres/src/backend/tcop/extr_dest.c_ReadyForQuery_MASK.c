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
typedef  int /*<<< orphan*/  StringInfoData ;
typedef  int CommandDest ;

/* Variables and functions */
#define  DestCopyOut 139 
#define  DestDebug 138 
#define  DestIntoRel 137 
#define  DestNone 136 
#define  DestRemote 135 
#define  DestRemoteExecute 134 
#define  DestRemoteSimple 133 
#define  DestSPI 132 
#define  DestSQLFunction 131 
#define  DestTransientRel 130 
#define  DestTupleQueue 129 
#define  DestTuplestore 128 
 int /*<<< orphan*/  FrontendProtocol ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC7(CommandDest dest)
{
	switch (dest)
	{
		case DestRemote:
		case DestRemoteExecute:
		case DestRemoteSimple:
			if (FUNC0(FrontendProtocol) >= 3)
			{
				StringInfoData buf;

				FUNC2(&buf, 'Z');
				FUNC6(&buf, FUNC1());
				FUNC3(&buf);
			}
			else
				FUNC5('Z');
			/* Flush output at end of cycle in any case. */
			FUNC4();
			break;

		case DestNone:
		case DestDebug:
		case DestSPI:
		case DestTuplestore:
		case DestIntoRel:
		case DestCopyOut:
		case DestSQLFunction:
		case DestTransientRel:
		case DestTupleQueue:
			break;
	}
}