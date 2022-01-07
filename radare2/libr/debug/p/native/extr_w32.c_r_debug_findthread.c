
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_2__ {int tid; int pid; } ;
typedef int THREAD_ITEM ;
typedef TYPE_1__* PTHREAD_ITEM ;


 scalar_t__ lstThread ;

__attribute__((used)) static void * r_debug_findthread (int pid, int tid) {
 PTHREAD_ITEM threadPtr = ((void*)0);
 if (lstThread) {
  threadPtr = (PTHREAD_ITEM)lstThread;
  while (threadPtr->tid != 0) {
   if (threadPtr->pid == pid) {
    if (threadPtr->tid == tid) {
     return ((void*)threadPtr);
    }
   }
   threadPtr = (PTHREAD_ITEM)((ULONG_PTR)threadPtr + sizeof (THREAD_ITEM));
  }
 }
 return ((void*)0);
}
