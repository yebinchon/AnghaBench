
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_5__ {size_t numOfChildren; struct TYPE_5__* Children; struct TYPE_5__* szKey; } ;
typedef TYPE_1__ StringTable ;


 int free (TYPE_1__*) ;
 int free_String (TYPE_1__) ;

__attribute__((used)) static void free_StringTable(StringTable* stringTable) {
 if (stringTable) {
  free (stringTable->szKey);
  if (stringTable->Children) {
   ut32 childrenST = 0;
   for (; childrenST < stringTable->numOfChildren; childrenST++) {
    free_String (stringTable->Children[childrenST]);
   }
   free (stringTable->Children);
  }
  free (stringTable);
 }
}
