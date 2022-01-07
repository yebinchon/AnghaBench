
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_value ;
struct TYPE_2__ {int flags; unsigned int eSubtype; } ;
typedef TYPE_1__ Mem ;


 int MEM_Subtype ;

unsigned int sqlite3_value_subtype(sqlite3_value *pVal){
  Mem *pMem = (Mem*)pVal;
  return ((pMem->flags & MEM_Subtype) ? pMem->eSubtype : 0);
}
