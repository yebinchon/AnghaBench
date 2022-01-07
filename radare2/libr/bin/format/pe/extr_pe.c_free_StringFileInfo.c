
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_5__ {size_t numOfChildren; struct TYPE_5__* Children; struct TYPE_5__* szKey; } ;
typedef TYPE_1__ StringFileInfo ;


 int free (TYPE_1__*) ;
 int free_StringTable (TYPE_1__) ;

__attribute__((used)) static void free_StringFileInfo(StringFileInfo* stringFileInfo) {
 if (stringFileInfo) {
  free (stringFileInfo->szKey);
  if (stringFileInfo->Children) {
   ut32 childrenSFI = 0;
   for (; childrenSFI < stringFileInfo->numOfChildren; childrenSFI++) {
    free_StringTable (stringFileInfo->Children[childrenSFI]);
   }
   free (stringFileInfo->Children);
  }
  free (stringFileInfo);
 }
}
