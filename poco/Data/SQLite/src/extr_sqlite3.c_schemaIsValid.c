
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {int nDb; TYPE_2__* aDb; int mutex; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_12__ {int rc; int checkSchema; TYPE_3__* db; } ;
struct TYPE_10__ {TYPE_1__* pSchema; int * pBt; } ;
struct TYPE_9__ {int schema_cookie; } ;
typedef TYPE_4__ Parse ;
typedef int Btree ;


 int BTREE_SCHEMA_VERSION ;
 int SQLITE_IOERR_NOMEM ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_SCHEMA ;
 int assert (int ) ;
 int sqlite3BtreeBeginTrans (int *,int ,int ) ;
 int sqlite3BtreeCommit (int *) ;
 int sqlite3BtreeGetMeta (int *,int ,int *) ;
 int sqlite3BtreeIsInReadTrans (int *) ;
 int sqlite3OomFault (TYPE_3__*) ;
 int sqlite3ResetOneSchema (TYPE_3__*,int) ;
 int sqlite3SchemaMutexHeld (TYPE_3__*,int,int ) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static void schemaIsValid(Parse *pParse){
  sqlite3 *db = pParse->db;
  int iDb;
  int rc;
  int cookie;

  assert( pParse->checkSchema );
  assert( sqlite3_mutex_held(db->mutex) );
  for(iDb=0; iDb<db->nDb; iDb++){
    int openedTransaction = 0;
    Btree *pBt = db->aDb[iDb].pBt;
    if( pBt==0 ) continue;




    if( !sqlite3BtreeIsInReadTrans(pBt) ){
      rc = sqlite3BtreeBeginTrans(pBt, 0, 0);
      if( rc==SQLITE_NOMEM || rc==SQLITE_IOERR_NOMEM ){
        sqlite3OomFault(db);
      }
      if( rc!=SQLITE_OK ) return;
      openedTransaction = 1;
    }




    sqlite3BtreeGetMeta(pBt, BTREE_SCHEMA_VERSION, (u32 *)&cookie);
    assert( sqlite3SchemaMutexHeld(db, iDb, 0) );
    if( cookie!=db->aDb[iDb].pSchema->schema_cookie ){
      sqlite3ResetOneSchema(db, iDb);
      pParse->rc = SQLITE_SCHEMA;
    }


    if( openedTransaction ){
      sqlite3BtreeCommit(pBt);
    }
  }
}
