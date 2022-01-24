#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_13__ ;
typedef  struct TYPE_23__   TYPE_12__ ;
typedef  struct TYPE_22__   TYPE_11__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
struct TYPE_31__ {int /*<<< orphan*/  ExceptionCode; } ;
struct TYPE_32__ {TYPE_7__ ExceptionRecord; } ;
struct TYPE_30__ {int /*<<< orphan*/  lpBaseOfDll; } ;
struct TYPE_29__ {int /*<<< orphan*/  hFile; int /*<<< orphan*/  lpBaseOfDll; } ;
struct TYPE_28__ {int /*<<< orphan*/  lpStartAddress; int /*<<< orphan*/  lpThreadLocalBase; int /*<<< orphan*/  hThread; } ;
struct TYPE_27__ {int /*<<< orphan*/  dwExitCode; } ;
struct TYPE_26__ {scalar_t__ dwExitCode; } ;
struct TYPE_25__ {int /*<<< orphan*/  lpStartAddress; int /*<<< orphan*/  hProcess; } ;
struct TYPE_33__ {TYPE_8__ Exception; TYPE_6__ UnloadDll; TYPE_5__ LoadDll; TYPE_4__ CreateThread; TYPE_3__ ExitThread; TYPE_2__ ExitProcess; TYPE_1__ CreateProcessInfo; } ;
struct TYPE_24__ {unsigned int dwDebugEventCode; int dwThreadId; int dwProcessId; TYPE_9__ u; } ;
struct TYPE_23__ {int /*<<< orphan*/  hFile; } ;
struct TYPE_22__ {int /*<<< orphan*/  dwExitCode; int /*<<< orphan*/  bFinished; } ;
struct TYPE_21__ {int tid; int pid; } ;
typedef  TYPE_10__ RDebug ;
typedef  TYPE_11__* PTHREAD_ITEM ;
typedef  TYPE_12__* PLIB_ITEM ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_13__ DEBUG_EVENT ;

/* Variables and functions */
#define  CREATE_PROCESS_DEBUG_EVENT 138 
#define  CREATE_THREAD_DEBUG_EVENT 137 
#define  EXCEPTION_BREAKPOINT 136 
#define  EXCEPTION_DEBUG_EVENT 135 
#define  EXCEPTION_SINGLE_STEP 134 
#define  EXIT_PROCESS_DEBUG_EVENT 133 
#define  EXIT_THREAD_DEBUG_EVENT 132 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INFINITE ; 
#define  LOAD_DLL_DEBUG_EVENT 131 
#define  OUTPUT_DEBUG_STRING_EVENT 130 
#define  RIP_EVENT 129 
 int R_DEBUG_REASON_BREAKPOINT ; 
 int R_DEBUG_REASON_EXIT_LIB ; 
 int R_DEBUG_REASON_EXIT_PID ; 
 int R_DEBUG_REASON_EXIT_TID ; 
 int R_DEBUG_REASON_NEW_LIB ; 
 int R_DEBUG_REASON_NEW_PID ; 
 int R_DEBUG_REASON_NEW_TID ; 
 int R_DEBUG_REASON_STEP ; 
 int R_DEBUG_REASON_TRAP ; 
 int R_DEBUG_REASON_UNKNOWN ; 
 int /*<<< orphan*/  TRUE ; 
#define  UNLOAD_DLL_DEBUG_EVENT 128 
 scalar_t__ FUNC0 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_12__* lstLibPtr ; 
 TYPE_11__* lstThreadPtr ; 
 int /*<<< orphan*/  FUNC5 (TYPE_13__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_10__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(RDebug *dbg, int pid) {
	DEBUG_EVENT de;
	int tid, next_event = 0;
	unsigned int code;
	char *dllname = NULL;
	int ret = R_DEBUG_REASON_UNKNOWN;
	static int exited_already = 0;
	/* handle debug events */
	do {
		/* do not continue when already exited but still open for examination */
		if (exited_already == pid) {
			return -1;
		}
		FUNC5 (&de, 0, sizeof (DEBUG_EVENT));
		if (FUNC0 (&de, INFINITE) == 0) {
			FUNC13 ("w32_dbg_wait/WaitForDebugEvent");
			return -1;
		}
		code = de.dwDebugEventCode;
		tid = de.dwThreadId;
		pid = de.dwProcessId;
		dbg->tid = tid;
		dbg->pid = pid;
		/* TODO: DEBUG_CONTROL_C */
		switch (code) {
		case CREATE_PROCESS_DEBUG_EVENT:
			FUNC2 ("(%d) created process (%d:%p)\n",
				pid, FUNC14 (de.u.CreateProcessInfo.hProcess),
				de.u.CreateProcessInfo.lpStartAddress);
			FUNC12 (dbg, pid, tid, -1);
			next_event = 1;
			ret = R_DEBUG_REASON_NEW_PID;
			break;
		case EXIT_PROCESS_DEBUG_EVENT:
			//eprintf ("(%d) Process %d exited with exit code %d\n", (int)de.dwProcessId, (int)de.dwProcessId,
			//	(int)de.u.ExitProcess.dwExitCode);
			FUNC7 ("(%d) Process %d exited with exit code %d\n", (int)de.dwProcessId, (int)de.dwProcessId,
				(int)de.u.ExitProcess.dwExitCode);
			FUNC6 ();
			//debug_load();
			next_event = 0;
			exited_already = pid;
			ret = R_DEBUG_REASON_EXIT_PID;
			break;
		case CREATE_THREAD_DEBUG_EVENT:
			//eprintf ("(%d) Created thread %d (start @ %p)\n", pid, tid, de.u.CreateThread.lpStartAddress);
			FUNC11 (pid, tid, de.u.CreateThread.hThread, de.u.CreateThread.lpThreadLocalBase, de.u.CreateThread.lpStartAddress, FALSE);
			//r_debug_native_continue (dbg, pid, tid, -1);
			ret = R_DEBUG_REASON_NEW_TID;
			next_event = 0;
			break;
		case EXIT_THREAD_DEBUG_EVENT:
			//eprintf ("(%d) Finished thread %d\n", pid, tid);
			lstThreadPtr = (PTHREAD_ITEM)FUNC9 (pid, tid);
			if (lstThreadPtr) {
				lstThreadPtr->bFinished = TRUE;
				lstThreadPtr->dwExitCode = de.u.ExitThread.dwExitCode;
			} else {
				FUNC11 (pid, tid, de.u.CreateThread.hThread, de.u.CreateThread.lpThreadLocalBase, de.u.CreateThread.lpStartAddress, TRUE);
			}
			//r_debug_native_continue (dbg, pid, tid, -1);
			next_event = 0;
			ret = R_DEBUG_REASON_EXIT_TID;
			break;
		case LOAD_DLL_DEBUG_EVENT:
			dllname = FUNC4 (de.u.LoadDll.hFile);
			//eprintf ("(%d) Loading library at %p (%s)\n",pid, de.u.LoadDll.lpBaseOfDll, dllname ? dllname : "no name");
			FUNC10 (pid,de.u.LoadDll.lpBaseOfDll, de.u.LoadDll.hFile, dllname);
			if (dllname) {
				FUNC3 (dllname);
			}
			next_event = 0;
			ret = R_DEBUG_REASON_NEW_LIB;
			break;
		case UNLOAD_DLL_DEBUG_EVENT:
			//eprintf ("(%d) Unloading library at %p\n", pid, de.u.UnloadDll.lpBaseOfDll);
			lstLibPtr = (PLIB_ITEM)FUNC8 (de.u.UnloadDll.lpBaseOfDll);
			if (lstLibPtr != NULL) {
				lstLibPtr->hFile = (HANDLE)-1;
			} else {
				FUNC10 (pid, de.u.UnloadDll.lpBaseOfDll, (HANDLE)-1, "not cached");
				if (dllname)
					FUNC3 (dllname);
			}
			next_event = 0;
			ret = R_DEBUG_REASON_EXIT_LIB;
			break;
		case OUTPUT_DEBUG_STRING_EVENT:
			//eprintf ("(%d) Debug string\n", pid);
			FUNC7 ("(%d) Debug string\n", pid);
			FUNC6 ();

			FUNC12 (dbg, pid, tid, -1);
			next_event = 1;
			break;
		case RIP_EVENT:
			//eprintf ("(%d) RIP event\n", pid);
			FUNC7 ("(%d) RIP event\n", pid);
			FUNC6 ();
			FUNC12 (dbg, pid, tid, -1);
			next_event = 1;
			// XXX unknown ret = R_DEBUG_REASON_TRAP;
			break;
		case EXCEPTION_DEBUG_EVENT:
			switch (de.u.Exception.ExceptionRecord.ExceptionCode) {
#if _WIN64
			case 0x4000001f: /* STATUS_WX86_BREAKPOINT */
#endif
			case EXCEPTION_BREAKPOINT:
				ret = R_DEBUG_REASON_BREAKPOINT;
				next_event = 0;
				break;
#if _WIN64
			case 0x4000001e: /* STATUS_WX86_SINGLE_STEP */
#endif
			case EXCEPTION_SINGLE_STEP:
				ret = R_DEBUG_REASON_STEP;
				next_event = 0;
				break;
			default:
				if (!FUNC1 (&de)) {
					ret = R_DEBUG_REASON_TRAP;
					next_event = 0;
				}
				else {
					next_event = 1;
					FUNC12 (dbg, pid, tid, -1);
				}

			}
			break;
		default:
			FUNC2 ("(%d) unknown event: %d\n", pid, code);
			return -1;
		}
	} while (next_event);
	return ret;
}