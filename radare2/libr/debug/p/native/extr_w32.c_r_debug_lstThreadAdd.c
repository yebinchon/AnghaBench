
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lpThreadEntryPoint; void* lpStartAddress; void* lpThreadLocalBase; int hThread; int bFinished; void* tid; void* pid; } ;
typedef int THREAD_ITEM ;
typedef int PVOID ;
typedef TYPE_1__* PTHREAD_ITEM ;
typedef void* LPVOID ;
typedef int HANDLE ;
typedef void* DWORD ;
typedef int BOOL ;


 int MEM_COMMIT ;
 int PAGE_READWRITE ;
 int PTHREAD_MAX ;
 scalar_t__ VirtualAlloc (int ,int,int ,int ) ;
 int eprintf (char*) ;
 scalar_t__ lstThread ;
 TYPE_1__* lstThreadPtr ;
 scalar_t__ w32_NtQueryInformationThread (int ,int,int *,int,int *) ;

__attribute__((used)) static void r_debug_lstThreadAdd (DWORD pid, DWORD tid, HANDLE hThread, LPVOID lpThreadLocalBase, LPVOID lpStartAddress, BOOL bFinished) {
 int x;
 PVOID startAddress = 0;
 if (lstThread == 0)
  lstThread = VirtualAlloc (0, PTHREAD_MAX * sizeof (THREAD_ITEM), MEM_COMMIT, PAGE_READWRITE);
 lstThreadPtr = (PTHREAD_ITEM)lstThread;
 for (x = 0; x < PTHREAD_MAX; x++) {
  if (!lstThreadPtr->tid) {
   lstThreadPtr->pid = pid;
   lstThreadPtr->tid = tid;
   lstThreadPtr->bFinished = bFinished;
   lstThreadPtr->hThread = hThread;
   lstThreadPtr->lpThreadLocalBase = lpThreadLocalBase;
   lstThreadPtr->lpStartAddress = lpStartAddress;
   if (w32_NtQueryInformationThread (hThread, 0x9 , &startAddress, sizeof (PVOID), ((void*)0)) == 0) {
    lstThreadPtr->lpThreadEntryPoint = startAddress;
   }
   return;
  }
  lstThreadPtr++;
 }
 eprintf ("r_debug_lstThreadAdd: Cannot find slot\n");
}
