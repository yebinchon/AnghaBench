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
typedef  int /*<<< orphan*/  typebuf ;
typedef  scalar_t__ pid_t ;
typedef  int AuxProcType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
#define  BgWriterProcess 132 
#define  CheckpointerProcess 131 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * PostmasterContext ; 
#define  StartupProcess 130 
 int /*<<< orphan*/  TopMemoryContext ; 
#define  WalReceiverProcess 129 
#define  WalWriterProcess 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int errno ; 
 scalar_t__ FUNC9 () ; 
 int FUNC10 (char**) ; 
 scalar_t__ FUNC11 (int,char**) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 

__attribute__((used)) static pid_t
FUNC13(AuxProcType type)
{
	pid_t		pid;
	char	   *av[10];
	int			ac = 0;
	char		typebuf[32];

	/*
	 * Set up command-line arguments for subprocess
	 */
	av[ac++] = "postgres";

#ifdef EXEC_BACKEND
	av[ac++] = "--forkboot";
	av[ac++] = NULL;			/* filled in by postmaster_forkexec */
#endif

	FUNC12(typebuf, sizeof(typebuf), "-x%d", type);
	av[ac++] = typebuf;

	av[ac] = NULL;
	FUNC0(ac < FUNC10(av));

#ifdef EXEC_BACKEND
	pid = postmaster_forkexec(ac, av);
#else							/* !EXEC_BACKEND */
	pid = FUNC9();

	if (pid == 0)				/* child */
	{
		FUNC4();

		/* Close the postmaster's sockets */
		FUNC2(false);

		/* Release postmaster's working memory context */
		FUNC6(TopMemoryContext);
		FUNC5(PostmasterContext);
		PostmasterContext = NULL;

		FUNC1(ac, av);
		FUNC3(0);
	}
#endif							/* EXEC_BACKEND */

	if (pid < 0)
	{
		/* in parent, fork failed */
		int			save_errno = errno;

		errno = save_errno;
		switch (type)
		{
			case StartupProcess:
				FUNC7(LOG,
						(FUNC8("could not fork startup process: %m")));
				break;
			case BgWriterProcess:
				FUNC7(LOG,
						(FUNC8("could not fork background writer process: %m")));
				break;
			case CheckpointerProcess:
				FUNC7(LOG,
						(FUNC8("could not fork checkpointer process: %m")));
				break;
			case WalWriterProcess:
				FUNC7(LOG,
						(FUNC8("could not fork WAL writer process: %m")));
				break;
			case WalReceiverProcess:
				FUNC7(LOG,
						(FUNC8("could not fork WAL receiver process: %m")));
				break;
			default:
				FUNC7(LOG,
						(FUNC8("could not fork process: %m")));
				break;
		}

		/*
		 * fork failure is fatal during startup, but there's no need to choke
		 * immediately if starting other child types fails.
		 */
		if (type == StartupProcess)
			FUNC3(1);
		return 0;
	}

	/*
	 * in parent, successful fork
	 */
	return pid;
}