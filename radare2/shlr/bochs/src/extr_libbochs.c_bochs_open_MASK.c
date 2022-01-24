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
struct _SECURITY_ATTRIBUTES {int nLength; int bInheritHandle; scalar_t__ lpSecurityDescriptor; } ;
struct TYPE_10__ {int cb; int hStdError; int hStdOutput; int hStdInput; int /*<<< orphan*/  hProcess; int /*<<< orphan*/  dwFlags; } ;
struct TYPE_9__ {int hReadPipeIn; int hReadPipeOut; int hWritePipeIn; int hWritePipeOut; int isRunning; int pid; TYPE_2__ processInfo; TYPE_2__ info; void* data; } ;
typedef  TYPE_1__ libbochs_t ;
typedef  int /*<<< orphan*/  commandline ;
typedef  int /*<<< orphan*/  STARTUPINFOA ;
typedef  int /*<<< orphan*/  PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  LPTSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_NEW_CONSOLE ; 
 scalar_t__ FUNC0 (int*,int*,struct _SECURITY_ATTRIBUTES*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 size_t PIPE_READ ; 
 size_t PIPE_WRITE ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  SIZE_BUF ; 
 int /*<<< orphan*/  STARTF_USESTDHANDLES ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const*,char*,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 void* lpTmpBuffer ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ FUNC18 (int*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int FUNC20 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*,char const*,char const*) ; 

bool FUNC22(libbochs_t* b, const char * pathBochs, const char * pathConfig) {
	bool result = false;

	b->data = FUNC15 (SIZE_BUF);
	if (!b->data) {
		return false;
	}
	lpTmpBuffer = FUNC15 (SIZE_BUF);
	if (!lpTmpBuffer) {
		FUNC2 (b->data);
		return false;
	}
#if __WINDOWS__
	struct _SECURITY_ATTRIBUTES PipeAttributes;
	char commandline[1024];
	PipeAttributes.nLength = 12;
	PipeAttributes.bInheritHandle = 1;
	PipeAttributes.lpSecurityDescriptor = 0;
	//
	if (CreatePipe (&b->hReadPipeIn, &b->hReadPipeOut, &PipeAttributes, SIZE_BUF) &&
	    CreatePipe (&b->hWritePipeIn, &b->hWritePipeOut, &PipeAttributes, SIZE_BUF)
	   ) {
		LPTSTR commandline_;

		memset (&b->info, 0, sizeof (STARTUPINFOA));
		memset (&b->processInfo, 0, sizeof (PROCESS_INFORMATION));
		b->info.cb = sizeof (STARTUPINFOA);
		b->info.hStdError = b->hReadPipeOut;
		b->info.hStdOutput = b->hReadPipeOut;
		b->info.hStdInput = b->hWritePipeIn;
		b->info.dwFlags |=  STARTF_USESTDHANDLES;
		snprintf (commandline, sizeof (commandline), "\"%s\" -f \"%s\" -q ", pathBochs, pathConfig);
		lprintf ("*** Creating process: %s\n", commandline);
		commandline_ = r_sys_conv_utf8_to_win (commandline);
		if (CreateProcess (NULL, commandline_, NULL, NULL, TRUE, CREATE_NEW_CONSOLE,
				NULL, NULL, &b->info, &b->processInfo)) {
			lprintf ("Process created\n");
			WaitForInputIdle (b->processInfo.hProcess, INFINITE);
			lprintf ("Initialized input\n");
			b->isRunning = true;
			bochs_reset_buffer (b);
			eprintf ("Waiting for bochs...\n");
			if (bochs_wait (b)) {
				eprintf ("Ready.\n");
				result = true;
			} else {
				bochs_close (b);
			}
		}
		free (commandline_);
	}
#else
	#define PIPE_READ 0
	#define PIPE_WRITE 1
	int aStdinPipe[2];
	int aStdoutPipe[2];
	int nChild;

	if (FUNC18 (aStdinPipe) < 0) {
		FUNC9 ("Error: allocating pipe for child input redirect");
		return false;
	}
	if (FUNC18(aStdoutPipe) < 0) {
		FUNC7 (aStdinPipe[PIPE_READ]);
		FUNC7 (aStdinPipe[PIPE_WRITE]);
		FUNC9 ("Error: allocating pipe for child output redirect");
		return false;
	}

	nChild = FUNC12 ();
	if (0 == nChild) {
		// redirect stdin
		if (FUNC8 (aStdinPipe[PIPE_READ], STDIN_FILENO) == -1) {
			FUNC9 ("Error: redirecting stdin");
			return false;
		}

		// redirect stdout
		if (FUNC8 (aStdoutPipe[PIPE_WRITE], STDOUT_FILENO) == -1) {
			FUNC9 ("Error: redirecting stdout");
			return false;
		}

		// redirect stderr
		if (FUNC8 (aStdoutPipe[PIPE_WRITE], STDERR_FILENO) == -1) {
			FUNC9 ("Error: redirecting stderr");
			return false;
		}

		FUNC7 (aStdinPipe[PIPE_READ]);
		FUNC7 (aStdinPipe[PIPE_WRITE]);
		FUNC7 (aStdoutPipe[PIPE_READ]);
		FUNC7 (aStdoutPipe[PIPE_WRITE]);
		(void) FUNC10 (pathBochs, pathBochs, "-q", "-f", pathConfig, NULL);
		FUNC17 ("execl");
		FUNC11 (1);
	} else if (nChild > 0) {
		FUNC7 (aStdinPipe[PIPE_READ]);
		FUNC7 (aStdoutPipe[PIPE_WRITE]);

		if (FUNC20 (aStdoutPipe[PIPE_READ], lpTmpBuffer, 1) != 1) {
			FUNC9 ("boch_open failed");
			FUNC4 (b);
		} else {
			b->hReadPipeIn  = aStdoutPipe[PIPE_READ];
			b->hWritePipeOut = aStdinPipe[PIPE_WRITE];
			b->isRunning = true;
			FUNC5 (b);
			FUNC9 ("Waiting for bochs...\n");
			if (FUNC6 (b)) {
				FUNC9 ("Ready.\n");
				b->pid = nChild;
				result = true;
			} else {
				FUNC4 (b);
			}
		}
	} else {
		FUNC17 ("pipe");
		// failed to create child
		FUNC7 (aStdinPipe[PIPE_READ]);
		FUNC7 (aStdinPipe[PIPE_WRITE]);
		FUNC7 (aStdoutPipe[PIPE_READ]);
		FUNC7 (aStdoutPipe[PIPE_WRITE]);
	}
#endif
	return result;
}