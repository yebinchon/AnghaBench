
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;


struct TYPE_18__ {int mutex; TYPE_1__* pVtabCtx; int mallocFailed; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_19__ {int tabFlags; scalar_t__ nCol; scalar_t__ aCol; } ;
typedef TYPE_3__ Table ;
struct TYPE_20__ {int declareVtab; int nQueryLoop; TYPE_13__* pNewTable; scalar_t__ pVdbe; TYPE_2__* db; } ;
struct TYPE_17__ {TYPE_3__* pTab; } ;
struct TYPE_16__ {int tabFlags; scalar_t__ aCol; scalar_t__ nCol; int pSelect; } ;
typedef TYPE_4__ Parse ;


 int SQLITE_ERROR ;
 int SQLITE_MISUSE ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int TF_Virtual ;
 int assert (int) ;
 int sqlite3ApiExit (TYPE_2__*,int) ;
 int sqlite3DbFree (TYPE_2__*,char*) ;
 int sqlite3DeleteTable (TYPE_2__*,TYPE_13__*) ;
 int sqlite3Error (TYPE_2__*,int,char*,...) ;
 int sqlite3RunParser (TYPE_4__*,char const*,char**) ;
 TYPE_4__* sqlite3StackAllocZero (TYPE_2__*,int) ;
 int sqlite3StackFree (TYPE_2__*,TYPE_4__*) ;
 int sqlite3VdbeFinalize (scalar_t__) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

int sqlite3_declare_vtab(sqlite3 *db, const char *zCreateTable){
  Parse *pParse;

  int rc = SQLITE_OK;
  Table *pTab;
  char *zErr = 0;

  sqlite3_mutex_enter(db->mutex);
  if( !db->pVtabCtx || !(pTab = db->pVtabCtx->pTab) ){
    sqlite3Error(db, SQLITE_MISUSE, 0);
    sqlite3_mutex_leave(db->mutex);
    return SQLITE_MISUSE_BKPT;
  }
  assert( (pTab->tabFlags & TF_Virtual)!=0 );

  pParse = sqlite3StackAllocZero(db, sizeof(*pParse));
  if( pParse==0 ){
    rc = SQLITE_NOMEM;
  }else{
    pParse->declareVtab = 1;
    pParse->db = db;
    pParse->nQueryLoop = 1;

    if( SQLITE_OK==sqlite3RunParser(pParse, zCreateTable, &zErr)
     && pParse->pNewTable
     && !db->mallocFailed
     && !pParse->pNewTable->pSelect
     && (pParse->pNewTable->tabFlags & TF_Virtual)==0
    ){
      if( !pTab->aCol ){
        pTab->aCol = pParse->pNewTable->aCol;
        pTab->nCol = pParse->pNewTable->nCol;
        pParse->pNewTable->nCol = 0;
        pParse->pNewTable->aCol = 0;
      }
      db->pVtabCtx->pTab = 0;
    }else{
      sqlite3Error(db, SQLITE_ERROR, (zErr ? "%s" : 0), zErr);
      sqlite3DbFree(db, zErr);
      rc = SQLITE_ERROR;
    }
    pParse->declareVtab = 0;

    if( pParse->pVdbe ){
      sqlite3VdbeFinalize(pParse->pVdbe);
    }
    sqlite3DeleteTable(db, pParse->pNewTable);
    sqlite3StackFree(db, pParse);
  }

  assert( (rc&0xff)==rc );
  rc = sqlite3ApiExit(db, rc);
  sqlite3_mutex_leave(db->mutex);
  return rc;
}
