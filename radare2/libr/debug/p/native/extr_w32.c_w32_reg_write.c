
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_8__ {int ContextFlags; } ;
struct TYPE_7__ {int tid; int pid; } ;
typedef TYPE_1__ RDebug ;
typedef int HANDLE ;
typedef TYPE_2__ CONTEXT ;
typedef int BOOL ;


 int CONTEXT_ALL ;
 int CloseHandle (int ) ;
 int GetThreadContext (int ,TYPE_2__*) ;
 scalar_t__ SetThreadContext (int ,TYPE_2__*) ;
 int memcpy (TYPE_2__*,int const*,int) ;
 int w32_open_thread (int ,int ) ;

__attribute__((used)) static int w32_reg_write(RDebug *dbg, int type, const ut8* buf, int size) {
 BOOL ret = 0;
 HANDLE thread;



 CONTEXT ctx __attribute__((aligned (16)));

 thread = w32_open_thread (dbg->pid, dbg->tid);
 ctx.ContextFlags = CONTEXT_ALL;
 GetThreadContext (thread, &ctx);


  if (size > sizeof (CONTEXT)) {
   size = sizeof (CONTEXT);
  }
  memcpy (&ctx, buf, size);
  ret = SetThreadContext (thread, &ctx)? 1: 0;

 CloseHandle (thread);
 return ret;
}
