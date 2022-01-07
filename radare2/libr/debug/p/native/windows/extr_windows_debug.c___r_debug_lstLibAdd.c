
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hFile; int Name; int Path; int BaseOfDll; int pid; } ;
typedef TYPE_1__* PLIB_ITEM ;
typedef int LPVOID ;
typedef int LIB_ITEM ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 size_t MAX_PATH ;
 int MEM_COMMIT ;
 int PAGE_READWRITE ;
 int PLIB_MAX ;
 int R_LOG_ERROR (char*) ;
 scalar_t__ VirtualAlloc (int ,int,int ,int ) ;
 int eprintf (char*) ;
 scalar_t__ lstLib ;
 TYPE_1__* lstLibPtr ;
 int strlen (char*) ;
 int strncpy (int ,char*,size_t) ;

__attribute__((used)) static void __r_debug_lstLibAdd(DWORD pid, LPVOID lpBaseOfDll, HANDLE hFile, char *dllname) {
 if (lstLib == 0) {
  lstLib = VirtualAlloc (0, PLIB_MAX * sizeof (LIB_ITEM), MEM_COMMIT, PAGE_READWRITE);
 }
 lstLibPtr = (PLIB_ITEM)lstLib;
 if (!lstLibPtr) {
  R_LOG_ERROR ("Failed to allocate memory");
  return;
 }
 for (int x = 0; x < PLIB_MAX; x++) {
  if (lstLibPtr->hFile == hFile) {
   return;
  }
  if (!lstLibPtr->hFile) {
   lstLibPtr->pid = pid;
   lstLibPtr->hFile = hFile;
   lstLibPtr->BaseOfDll = lpBaseOfDll;
   strncpy (lstLibPtr->Path, dllname, MAX_PATH - 1);
   int i = strlen (dllname);
   int n = i;
   while (dllname[i] != '\\' && i >= 0) {
    i--;
   }
   strncpy (lstLibPtr->Name, dllname + i + 1, (size_t)n - i);
   return;
  }
  lstLibPtr++;
 }
 eprintf ("__r_debug_lstLibAdd: Cannot find slot\n");
}
