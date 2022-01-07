
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nDb; int (* xWalCallback ) (int ,TYPE_2__*,int ,int) ;TYPE_1__* aDb; int pWalArg; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_5__ {int zName; int * pBt; } ;
typedef int Btree ;


 int SQLITE_OK ;
 int sqlite3BtreePager (int *) ;
 int sqlite3PagerWalCallback (int ) ;
 int stub1 (int ,TYPE_2__*,int ,int) ;

__attribute__((used)) static int doWalCallbacks(sqlite3 *db){
  int rc = SQLITE_OK;

  int i;
  for(i=0; i<db->nDb; i++){
    Btree *pBt = db->aDb[i].pBt;
    if( pBt ){
      int nEntry = sqlite3PagerWalCallback(sqlite3BtreePager(pBt));
      if( db->xWalCallback && nEntry>0 && rc==SQLITE_OK ){
        rc = db->xWalCallback(db->pWalArg, db, db->aDb[i].zName, nEntry);
      }
    }
  }

  return rc;
}
