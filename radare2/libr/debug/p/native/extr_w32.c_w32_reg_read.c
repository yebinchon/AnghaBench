
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_9__ {int ContextFlags; } ;
struct TYPE_8__ {int pid; int tid; } ;
typedef TYPE_1__ RDebug ;
typedef int * HANDLE ;
typedef TYPE_2__ CONTEXT ;


 int CONTEXT_ALL ;
 int CloseHandle (int *) ;
 scalar_t__ GetThreadContext (int *,TYPE_2__*) ;
 scalar_t__ TRUE ;
 int memcpy (int *,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int printwincontext (int *,TYPE_2__*) ;
 int r_sys_perror (char*) ;
 int * w32_open_thread (int,int) ;

__attribute__((used)) static int w32_reg_read(RDebug *dbg, int type, ut8 *buf, int size) {



 CONTEXT ctx __attribute__ ((aligned (16)));

 int showfpu = 0;
 int pid = dbg->pid;
 int tid = dbg->tid;
 HANDLE hThread = ((void*)0);
 if (type < -1) {
  showfpu = 1;
  type = -type;
 }
 hThread = w32_open_thread (pid, tid);
 memset(&ctx, 0, sizeof (CONTEXT));
 ctx.ContextFlags = CONTEXT_ALL ;
 if (GetThreadContext (hThread, &ctx) == TRUE) {


   if (size > sizeof (CONTEXT)) {
    size = sizeof (CONTEXT);
   }
   memcpy (buf, &ctx, size);



 } else {
  r_sys_perror ("w32_reg_read/GetThreadContext");
  size = 0;
 }
 if (showfpu) {
  printwincontext (hThread, &ctx);
 }
 CloseHandle(hThread);
 return size;
}
