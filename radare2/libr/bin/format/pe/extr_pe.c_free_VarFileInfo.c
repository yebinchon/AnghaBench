
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_5__ {size_t numOfChildren; struct TYPE_5__* Children; struct TYPE_5__* szKey; } ;
typedef TYPE_1__ VarFileInfo ;


 int free (TYPE_1__*) ;
 int free_Var (TYPE_1__) ;

__attribute__((used)) static void free_VarFileInfo(VarFileInfo* varFileInfo) {
 if (varFileInfo) {
  free (varFileInfo->szKey);
  if (varFileInfo->Children) {
   ut32 children = 0;
   for (; children < varFileInfo->numOfChildren; children++) {
    free_Var (varFileInfo->Children[children]);
   }
   free (varFileInfo->Children);
  }
  free (varFileInfo);
 }
}
