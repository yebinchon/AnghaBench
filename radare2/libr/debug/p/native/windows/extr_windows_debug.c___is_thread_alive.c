
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bFinished; int hThread; } ;
typedef int RDebug ;
typedef TYPE_1__* PTHREAD_ITEM ;


 int ResumeThread (int ) ;
 int SuspendThread (int ) ;
 TYPE_1__* __find_thread (int *,int) ;

__attribute__((used)) static bool __is_thread_alive(RDebug *dbg, int tid) {
 PTHREAD_ITEM th = __find_thread (dbg, tid);
 if (!th) {
  return 0;
 }
 if (!th->bFinished) {
  if (SuspendThread (th->hThread) != -1) {
   ResumeThread (th->hThread);
   return 1;
  }
 }
 th->bFinished = 1;
 return 0;
}
