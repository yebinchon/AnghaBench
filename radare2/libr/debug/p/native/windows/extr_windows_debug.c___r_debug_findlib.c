
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_2__ {void* BaseOfDll; int * hFile; } ;
typedef TYPE_1__* PLIB_ITEM ;
typedef int LIB_ITEM ;


 int * INVALID_HANDLE_VALUE ;
 scalar_t__ lstLib ;

__attribute__((used)) static void *__r_debug_findlib(void *BaseOfDll) {
 PLIB_ITEM libPtr = ((void*)0);
 if (lstLib) {
  libPtr = (PLIB_ITEM)lstLib;
  while (libPtr->hFile != ((void*)0)) {
   if (libPtr->hFile != INVALID_HANDLE_VALUE)
    if (libPtr->BaseOfDll == BaseOfDll)
     return ((void*)libPtr);
   libPtr = (PLIB_ITEM)((ULONG_PTR)libPtr + sizeof (LIB_ITEM));
  }
 }
 return ((void*)0);
}
