
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_13__ ;
typedef struct TYPE_23__ TYPE_12__ ;
typedef struct TYPE_22__ TYPE_11__ ;
typedef struct TYPE_21__ TYPE_10__ ;


struct TYPE_31__ {int ExceptionCode; } ;
struct TYPE_32__ {TYPE_7__ ExceptionRecord; } ;
struct TYPE_30__ {int lpBaseOfDll; } ;
struct TYPE_29__ {int hFile; int lpBaseOfDll; } ;
struct TYPE_28__ {int lpStartAddress; int lpThreadLocalBase; int hThread; } ;
struct TYPE_27__ {int dwExitCode; } ;
struct TYPE_26__ {scalar_t__ dwExitCode; } ;
struct TYPE_25__ {int lpStartAddress; int hProcess; } ;
struct TYPE_33__ {TYPE_8__ Exception; TYPE_6__ UnloadDll; TYPE_5__ LoadDll; TYPE_4__ CreateThread; TYPE_3__ ExitThread; TYPE_2__ ExitProcess; TYPE_1__ CreateProcessInfo; } ;
struct TYPE_24__ {unsigned int dwDebugEventCode; int dwThreadId; int dwProcessId; TYPE_9__ u; } ;
struct TYPE_23__ {int hFile; } ;
struct TYPE_22__ {int dwExitCode; int bFinished; } ;
struct TYPE_21__ {int tid; int pid; } ;
typedef TYPE_10__ RDebug ;
typedef TYPE_11__* PTHREAD_ITEM ;
typedef TYPE_12__* PLIB_ITEM ;
typedef int HANDLE ;
typedef TYPE_13__ DEBUG_EVENT ;
 int FALSE ;
 int INFINITE ;



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
 int TRUE ;

 scalar_t__ WaitForDebugEvent (TYPE_13__*,int ) ;
 int debug_exception_event (TYPE_13__*) ;
 int eprintf (char*,int,unsigned int,...) ;
 int free (char*) ;
 char* get_file_name_from_handle (int ) ;
 TYPE_12__* lstLibPtr ;
 TYPE_11__* lstThreadPtr ;
 int memset (TYPE_13__*,int ,int) ;
 int r_cons_flush () ;
 int r_cons_printf (char*,int,...) ;
 int r_debug_findlib (int ) ;
 int r_debug_findthread (int,int) ;
 int r_debug_lstLibAdd (int,int ,int ,char*) ;
 int r_debug_lstThreadAdd (int,int,int ,int ,int ,int ) ;
 int r_debug_native_continue (TYPE_10__*,int,int,int) ;
 int r_sys_perror (char*) ;
 int w32_h2t (int ) ;

int w32_dbg_wait(RDebug *dbg, int pid) {
 DEBUG_EVENT de;
 int tid, next_event = 0;
 unsigned int code;
 char *dllname = ((void*)0);
 int ret = R_DEBUG_REASON_UNKNOWN;
 static int exited_already = 0;

 do {

  if (exited_already == pid) {
   return -1;
  }
  memset (&de, 0, sizeof (DEBUG_EVENT));
  if (WaitForDebugEvent (&de, INFINITE) == 0) {
   r_sys_perror ("w32_dbg_wait/WaitForDebugEvent");
   return -1;
  }
  code = de.dwDebugEventCode;
  tid = de.dwThreadId;
  pid = de.dwProcessId;
  dbg->tid = tid;
  dbg->pid = pid;

  switch (code) {
  case 138:
   eprintf ("(%d) created process (%d:%p)\n",
    pid, w32_h2t (de.u.CreateProcessInfo.hProcess),
    de.u.CreateProcessInfo.lpStartAddress);
   r_debug_native_continue (dbg, pid, tid, -1);
   next_event = 1;
   ret = R_DEBUG_REASON_NEW_PID;
   break;
  case 133:


   r_cons_printf ("(%d) Process %d exited with exit code %d\n", (int)de.dwProcessId, (int)de.dwProcessId,
    (int)de.u.ExitProcess.dwExitCode);
   r_cons_flush ();

   next_event = 0;
   exited_already = pid;
   ret = R_DEBUG_REASON_EXIT_PID;
   break;
  case 137:

   r_debug_lstThreadAdd (pid, tid, de.u.CreateThread.hThread, de.u.CreateThread.lpThreadLocalBase, de.u.CreateThread.lpStartAddress, FALSE);

   ret = R_DEBUG_REASON_NEW_TID;
   next_event = 0;
   break;
  case 132:

   lstThreadPtr = (PTHREAD_ITEM)r_debug_findthread (pid, tid);
   if (lstThreadPtr) {
    lstThreadPtr->bFinished = TRUE;
    lstThreadPtr->dwExitCode = de.u.ExitThread.dwExitCode;
   } else {
    r_debug_lstThreadAdd (pid, tid, de.u.CreateThread.hThread, de.u.CreateThread.lpThreadLocalBase, de.u.CreateThread.lpStartAddress, TRUE);
   }

   next_event = 0;
   ret = R_DEBUG_REASON_EXIT_TID;
   break;
  case 131:
   dllname = get_file_name_from_handle (de.u.LoadDll.hFile);

   r_debug_lstLibAdd (pid,de.u.LoadDll.lpBaseOfDll, de.u.LoadDll.hFile, dllname);
   if (dllname) {
    free (dllname);
   }
   next_event = 0;
   ret = R_DEBUG_REASON_NEW_LIB;
   break;
  case 128:

   lstLibPtr = (PLIB_ITEM)r_debug_findlib (de.u.UnloadDll.lpBaseOfDll);
   if (lstLibPtr != ((void*)0)) {
    lstLibPtr->hFile = (HANDLE)-1;
   } else {
    r_debug_lstLibAdd (pid, de.u.UnloadDll.lpBaseOfDll, (HANDLE)-1, "not cached");
    if (dllname)
     free (dllname);
   }
   next_event = 0;
   ret = R_DEBUG_REASON_EXIT_LIB;
   break;
  case 130:

   r_cons_printf ("(%d) Debug string\n", pid);
   r_cons_flush ();

   r_debug_native_continue (dbg, pid, tid, -1);
   next_event = 1;
   break;
  case 129:

   r_cons_printf ("(%d) RIP event\n", pid);
   r_cons_flush ();
   r_debug_native_continue (dbg, pid, tid, -1);
   next_event = 1;

   break;
  case 135:
   switch (de.u.Exception.ExceptionRecord.ExceptionCode) {



   case 136:
    ret = R_DEBUG_REASON_BREAKPOINT;
    next_event = 0;
    break;



   case 134:
    ret = R_DEBUG_REASON_STEP;
    next_event = 0;
    break;
   default:
    if (!debug_exception_event (&de)) {
     ret = R_DEBUG_REASON_TRAP;
     next_event = 0;
    }
    else {
     next_event = 1;
     r_debug_native_continue (dbg, pid, tid, -1);
    }

   }
   break;
  default:
   eprintf ("(%d) unknown event: %d\n", pid, code);
   return -1;
  }
 } while (next_event);
 return ret;
}
