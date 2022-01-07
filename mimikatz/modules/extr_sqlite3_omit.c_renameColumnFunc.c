
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_51__ TYPE_8__ ;
typedef struct TYPE_50__ TYPE_7__ ;
typedef struct TYPE_49__ TYPE_6__ ;
typedef struct TYPE_48__ TYPE_5__ ;
typedef struct TYPE_47__ TYPE_4__ ;
typedef struct TYPE_46__ TYPE_3__ ;
typedef struct TYPE_45__ TYPE_2__ ;
typedef struct TYPE_44__ TYPE_25__ ;
typedef struct TYPE_43__ TYPE_1__ ;
typedef struct TYPE_42__ TYPE_12__ ;
typedef struct TYPE_41__ TYPE_11__ ;
typedef struct TYPE_40__ TYPE_10__ ;


typedef scalar_t__ sqlite3_xauth ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_48__ {scalar_t__ xAuth; scalar_t__ mallocFailed; } ;
typedef TYPE_5__ sqlite3 ;
typedef int sCtx ;
struct TYPE_46__ {TYPE_6__* pRename; } ;
struct TYPE_49__ {int iCol; int pList; TYPE_8__* pTab; TYPE_3__ u; int xSelectCallback; int xExprCallback; TYPE_10__* pParse; } ;
typedef TYPE_6__ Walker ;
struct TYPE_50__ {int * pExprList; int pIdList; TYPE_2__* pUpsert; scalar_t__ zTarget; struct TYPE_50__* pNext; } ;
typedef TYPE_7__ TriggerStep ;
struct TYPE_51__ {int nCol; int iPKey; char const* zName; TYPE_12__* pFKey; TYPE_11__* pIndex; int pCheck; TYPE_4__* aCol; int * pSelect; } ;
typedef TYPE_8__ Table ;
struct TYPE_47__ {char* zName; } ;
struct TYPE_45__ {int * pUpsertSet; } ;
struct TYPE_44__ {int pColumns; TYPE_7__* step_list; } ;
struct TYPE_43__ {int iFrom; char const* zCol; } ;
struct TYPE_42__ {int nCol; char const* zTo; TYPE_1__* aCol; struct TYPE_42__* pNextFrom; } ;
struct TYPE_41__ {int pPartIdxWhere; int aColExpr; struct TYPE_41__* pNext; } ;
struct TYPE_40__ {int rc; scalar_t__ zErrMsg; TYPE_25__* pNewTrigger; TYPE_8__* pTriggerTab; TYPE_11__* pNewIndex; TYPE_8__* pNewTable; } ;
typedef int Select ;
typedef TYPE_6__ RenameCtx ;
typedef TYPE_10__ Parse ;
typedef TYPE_11__ Index ;
typedef TYPE_12__ FKey ;
typedef int ExprList ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 int memset (TYPE_6__*,int ,int) ;
 int renameColumnElistNames (TYPE_10__*,TYPE_6__*,int *,char const*) ;
 int renameColumnExprCb ;
 int renameColumnIdlistNames (TYPE_10__*,TYPE_6__*,int ,char const*) ;
 int renameColumnParseError (int *,int ,int *,int *,TYPE_10__*) ;
 int renameColumnSelectCb ;
 int renameEditSql (int *,TYPE_6__*,char const*,char const*,int) ;
 int renameParseCleanup (TYPE_10__*) ;
 int renameParseSql (TYPE_10__*,char const*,int ,TYPE_5__*,char const*,int) ;
 int renameResolveTrigger (TYPE_10__*,char const*) ;
 int renameTokenFind (TYPE_10__*,TYPE_6__*,void*) ;
 int renameTokenFree (TYPE_5__*,int ) ;
 int renameWalkTrigger (TYPE_6__*,TYPE_25__*) ;
 int sqlite3BtreeEnterAll (TYPE_5__*) ;
 int sqlite3BtreeLeaveAll (TYPE_5__*) ;
 TYPE_8__* sqlite3FindTable (TYPE_5__*,char const*,char const*) ;
 TYPE_8__* sqlite3LocateTable (TYPE_10__*,int ,scalar_t__,char const*) ;
 int sqlite3SelectPrep (TYPE_10__*,int *,int ) ;
 int sqlite3WalkExpr (TYPE_6__*,int ) ;
 int sqlite3WalkExprList (TYPE_6__*,int ) ;
 int sqlite3WalkSelect (TYPE_6__*,int *) ;
 TYPE_5__* sqlite3_context_db_handle (int *) ;
 int sqlite3_result_error_code (int *,int) ;
 scalar_t__ sqlite3_stricmp (char const*,char const*) ;
 int sqlite3_value_int (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void renameColumnFunc(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **argv
){
  sqlite3 *db = sqlite3_context_db_handle(context);
  RenameCtx sCtx;
  const char *zSql = (const char*)sqlite3_value_text(argv[0]);
  const char *zDb = (const char*)sqlite3_value_text(argv[3]);
  const char *zTable = (const char*)sqlite3_value_text(argv[4]);
  int iCol = sqlite3_value_int(argv[5]);
  const char *zNew = (const char*)sqlite3_value_text(argv[6]);
  int bQuote = sqlite3_value_int(argv[7]);
  int bTemp = sqlite3_value_int(argv[8]);
  const char *zOld;
  int rc;
  Parse sParse;
  Walker sWalker;
  Index *pIdx;
  int i;
  Table *pTab;

  sqlite3_xauth xAuth = db->xAuth;


  UNUSED_PARAMETER(NotUsed);
  if( zSql==0 ) return;
  if( zTable==0 ) return;
  if( zNew==0 ) return;
  if( iCol<0 ) return;
  sqlite3BtreeEnterAll(db);
  pTab = sqlite3FindTable(db, zTable, zDb);
  if( pTab==0 || iCol>=pTab->nCol ){
    sqlite3BtreeLeaveAll(db);
    return;
  }
  zOld = pTab->aCol[iCol].zName;
  memset(&sCtx, 0, sizeof(sCtx));
  sCtx.iCol = ((iCol==pTab->iPKey) ? -1 : iCol);


  db->xAuth = 0;

  rc = renameParseSql(&sParse, zDb, 0, db, zSql, bTemp);


  memset(&sWalker, 0, sizeof(Walker));
  sWalker.pParse = &sParse;
  sWalker.xExprCallback = renameColumnExprCb;
  sWalker.xSelectCallback = renameColumnSelectCb;
  sWalker.u.pRename = &sCtx;

  sCtx.pTab = pTab;
  if( rc!=SQLITE_OK ) goto renameColumnFunc_done;
  if( sParse.pNewTable ){
    Select *pSelect = sParse.pNewTable->pSelect;
    if( pSelect ){
      sParse.rc = SQLITE_OK;
      sqlite3SelectPrep(&sParse, sParse.pNewTable->pSelect, 0);
      rc = (db->mallocFailed ? SQLITE_NOMEM : sParse.rc);
      if( rc==SQLITE_OK ){
        sqlite3WalkSelect(&sWalker, pSelect);
      }
      if( rc!=SQLITE_OK ) goto renameColumnFunc_done;
    }else{

      int bFKOnly = sqlite3_stricmp(zTable, sParse.pNewTable->zName);
      FKey *pFKey;
      assert( sParse.pNewTable->pSelect==0 );
      sCtx.pTab = sParse.pNewTable;
      if( bFKOnly==0 ){
        renameTokenFind(
            &sParse, &sCtx, (void*)sParse.pNewTable->aCol[iCol].zName
        );
        if( sCtx.iCol<0 ){
          renameTokenFind(&sParse, &sCtx, (void*)&sParse.pNewTable->iPKey);
        }
        sqlite3WalkExprList(&sWalker, sParse.pNewTable->pCheck);
        for(pIdx=sParse.pNewTable->pIndex; pIdx; pIdx=pIdx->pNext){
          sqlite3WalkExprList(&sWalker, pIdx->aColExpr);
        }
        for(pIdx=sParse.pNewIndex; pIdx; pIdx=pIdx->pNext){
          sqlite3WalkExprList(&sWalker, pIdx->aColExpr);
        }
      }

      for(pFKey=sParse.pNewTable->pFKey; pFKey; pFKey=pFKey->pNextFrom){
        for(i=0; i<pFKey->nCol; i++){
          if( bFKOnly==0 && pFKey->aCol[i].iFrom==iCol ){
            renameTokenFind(&sParse, &sCtx, (void*)&pFKey->aCol[i]);
          }
          if( 0==sqlite3_stricmp(pFKey->zTo, zTable)
           && 0==sqlite3_stricmp(pFKey->aCol[i].zCol, zOld)
          ){
            renameTokenFind(&sParse, &sCtx, (void*)pFKey->aCol[i].zCol);
          }
        }
      }
    }
  }else if( sParse.pNewIndex ){
    sqlite3WalkExprList(&sWalker, sParse.pNewIndex->aColExpr);
    sqlite3WalkExpr(&sWalker, sParse.pNewIndex->pPartIdxWhere);
  }else{

    TriggerStep *pStep;
    rc = renameResolveTrigger(&sParse, (bTemp ? 0 : zDb));
    if( rc!=SQLITE_OK ) goto renameColumnFunc_done;

    for(pStep=sParse.pNewTrigger->step_list; pStep; pStep=pStep->pNext){
      if( pStep->zTarget ){
        Table *pTarget = sqlite3LocateTable(&sParse, 0, pStep->zTarget, zDb);
        if( pTarget==pTab ){
          if( pStep->pUpsert ){
            ExprList *pUpsertSet = pStep->pUpsert->pUpsertSet;
            renameColumnElistNames(&sParse, &sCtx, pUpsertSet, zOld);
          }
          renameColumnIdlistNames(&sParse, &sCtx, pStep->pIdList, zOld);
          renameColumnElistNames(&sParse, &sCtx, pStep->pExprList, zOld);
        }
      }
    }



    if( sParse.pTriggerTab==pTab ){
      renameColumnIdlistNames(&sParse, &sCtx,sParse.pNewTrigger->pColumns,zOld);
    }


    renameWalkTrigger(&sWalker, sParse.pNewTrigger);
  }

  assert( rc==SQLITE_OK );
  rc = renameEditSql(context, &sCtx, zSql, zNew, bQuote);

renameColumnFunc_done:
  if( rc!=SQLITE_OK ){
    if( sParse.zErrMsg ){
      renameColumnParseError(context, 0, argv[1], argv[2], &sParse);
    }else{
      sqlite3_result_error_code(context, rc);
    }
  }

  renameParseCleanup(&sParse);
  renameTokenFree(db, sCtx.pList);

  db->xAuth = xAuth;

  sqlite3BtreeLeaveAll(db);
}
