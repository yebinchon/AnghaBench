
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nVTrans; int ** aVTrans; } ;
typedef TYPE_1__ sqlite3 ;
typedef int VTable ;


 int sqlite3VtabLock (int *) ;

__attribute__((used)) static void addToVTrans(sqlite3 *db, VTable *pVTab){

  db->aVTrans[db->nVTrans++] = pVTab;
  sqlite3VtabLock(pVTab);
}
