
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ pModule; } ;
typedef TYPE_1__ sqlite3_vtab ;
struct TYPE_10__ {int nVTrans; TYPE_4__** aVTrans; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_11__ {scalar_t__ iSavepoint; TYPE_1__* pVtab; } ;
typedef TYPE_4__ VTable ;


 int sqlite3DbFree (TYPE_2__*,TYPE_4__**) ;
 int sqlite3VtabUnlock (TYPE_4__*) ;

__attribute__((used)) static void callFinaliser(sqlite3 *db, int offset){
  int i;
  if( db->aVTrans ){
    for(i=0; i<db->nVTrans; i++){
      VTable *pVTab = db->aVTrans[i];
      sqlite3_vtab *p = pVTab->pVtab;
      if( p ){
        int (*x)(sqlite3_vtab *);
        x = *(int (**)(sqlite3_vtab *))((char *)p->pModule + offset);
        if( x ) x(p);
      }
      pVTab->iSavepoint = 0;
      sqlite3VtabUnlock(pVTab);
    }
    sqlite3DbFree(db, db->aVTrans);
    db->nVTrans = 0;
    db->aVTrans = 0;
  }
}
