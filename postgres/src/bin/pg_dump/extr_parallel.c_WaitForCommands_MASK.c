#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  TocEntry ;
typedef  scalar_t__ T_Action ;
struct TYPE_8__ {int (* WorkerJobDumpPtr ) (TYPE_1__*,int /*<<< orphan*/ *) ;int (* WorkerJobRestorePtr ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ ArchiveHandle ;

/* Variables and functions */
 scalar_t__ ACT_DUMP ; 
 scalar_t__ ACT_RESTORE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ **,scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int*,char*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(ArchiveHandle *AH, int pipefd[2])
{
	char	   *command;
	TocEntry   *te;
	T_Action	act;
	int			status = 0;
	char		buf[256];

	for (;;)
	{
		if (!(command = FUNC3(pipefd)))
		{
			/* EOF, so done */
			return;
		}

		/* Decode the command */
		FUNC5(AH, &te, &act, command);

		if (act == ACT_DUMP)
		{
			/* Acquire lock on this table within the worker's session */
			FUNC4(AH, te);

			/* Perform the dump command */
			status = (AH->WorkerJobDumpPtr) (AH, te);
		}
		else if (act == ACT_RESTORE)
		{
			/* Perform the restore command */
			status = (AH->WorkerJobRestorePtr) (AH, te);
		}
		else
			FUNC0(false);

		/* Return status to master */
		FUNC1(AH, te, act, status, buf, sizeof(buf));

		FUNC6(pipefd, buf);

		/* command was pg_malloc'd and we are responsible for free()ing it. */
		FUNC2(command);
	}
}