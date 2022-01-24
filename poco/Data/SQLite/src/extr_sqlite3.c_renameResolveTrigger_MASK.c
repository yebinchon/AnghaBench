#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {TYPE_1__* aDb; } ;
typedef  TYPE_4__ sqlite3 ;
typedef  int /*<<< orphan*/  sSrc ;
typedef  int /*<<< orphan*/  sNC ;
struct TYPE_25__ {scalar_t__ pUpsertTargetWhere; scalar_t__ pUpsertWhere; int /*<<< orphan*/ * pUpsertSet; int /*<<< orphan*/ * pUpsertTarget; TYPE_8__* pUpsertSrc; } ;
typedef  TYPE_5__ Upsert ;
struct TYPE_26__ {TYPE_5__* pUpsert; int /*<<< orphan*/ * pExprList; scalar_t__ pWhere; scalar_t__ zTarget; scalar_t__ pSelect; struct TYPE_26__* pNext; } ;
typedef  TYPE_6__ TriggerStep ;
struct TYPE_27__ {int pTabSchema; TYPE_6__* step_list; scalar_t__ pWhen; int /*<<< orphan*/  op; int /*<<< orphan*/  table; } ;
typedef  TYPE_7__ Trigger ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_29__ {int rc; scalar_t__ nErr; int /*<<< orphan*/ * pTriggerTab; int /*<<< orphan*/  eTriggerOp; TYPE_7__* pNewTrigger; TYPE_4__* db; } ;
struct TYPE_23__ {TYPE_5__* pUpsert; } ;
struct TYPE_28__ {int nSrc; struct TYPE_28__* pSrcList; scalar_t__ ncFlags; TYPE_3__ uNC; TYPE_2__* a; TYPE_9__* pParse; } ;
struct TYPE_22__ {int /*<<< orphan*/ * pTab; scalar_t__ zName; } ;
struct TYPE_21__ {int /*<<< orphan*/  zDbSName; } ;
typedef  TYPE_8__ SrcList ;
typedef  TYPE_9__ Parse ;
typedef  TYPE_8__ NameContext ;
typedef  int /*<<< orphan*/  ExprList ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ NC_UUpsert ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_9__*,int /*<<< orphan*/ ,scalar_t__,char const*) ; 
 int FUNC5 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_8__*,scalar_t__) ; 
 size_t FUNC7 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*,scalar_t__,TYPE_8__*) ; 
 int FUNC9 (TYPE_9__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(Parse *pParse, const char *zDb){
  sqlite3 *db = pParse->db;
  Trigger *pNew = pParse->pNewTrigger;
  TriggerStep *pStep;
  NameContext sNC;
  int rc = SQLITE_OK;

  FUNC2(&sNC, 0, sizeof(sNC));
  sNC.pParse = pParse;
  FUNC1( pNew->pTabSchema );
  pParse->pTriggerTab = FUNC3(db, pNew->table, 
      db->aDb[FUNC7(db, pNew->pTabSchema)].zDbSName
  );
  pParse->eTriggerOp = pNew->op;
  /* ALWAYS() because if the table of the trigger does not exist, the
  ** error would have been hit before this point */
  if( FUNC0(pParse->pTriggerTab) ){
    rc = FUNC9(pParse, pParse->pTriggerTab);
  }

  /* Resolve symbols in WHEN clause */
  if( rc==SQLITE_OK && pNew->pWhen ){
    rc = FUNC6(&sNC, pNew->pWhen);
  }

  for(pStep=pNew->step_list; rc==SQLITE_OK && pStep; pStep=pStep->pNext){
    if( pStep->pSelect ){
      FUNC8(pParse, pStep->pSelect, &sNC);
      if( pParse->nErr ) rc = pParse->rc;
    }
    if( rc==SQLITE_OK && pStep->zTarget ){
      Table *pTarget = FUNC4(pParse, 0, pStep->zTarget, zDb);
      if( pTarget==0 ){
        rc = SQLITE_ERROR;
      }else if( SQLITE_OK==(rc = FUNC9(pParse, pTarget)) ){
        SrcList sSrc;
        FUNC2(&sSrc, 0, sizeof(sSrc));
        sSrc.nSrc = 1;
        sSrc.a[0].zName = pStep->zTarget;
        sSrc.a[0].pTab = pTarget;
        sNC.pSrcList = &sSrc;
        if( pStep->pWhere ){
          rc = FUNC6(&sNC, pStep->pWhere);
        }
        if( rc==SQLITE_OK ){
          rc = FUNC5(&sNC, pStep->pExprList);
        }
        FUNC1( !pStep->pUpsert || (!pStep->pWhere && !pStep->pExprList) );
        if( pStep->pUpsert ){
          Upsert *pUpsert = pStep->pUpsert;
          FUNC1( rc==SQLITE_OK );
          pUpsert->pUpsertSrc = &sSrc;
          sNC.uNC.pUpsert = pUpsert;
          sNC.ncFlags = NC_UUpsert;
          rc = FUNC5(&sNC, pUpsert->pUpsertTarget);
          if( rc==SQLITE_OK ){
            ExprList *pUpsertSet = pUpsert->pUpsertSet;
            rc = FUNC5(&sNC, pUpsertSet);
          }
          if( rc==SQLITE_OK ){
            rc = FUNC6(&sNC, pUpsert->pUpsertWhere);
          }
          if( rc==SQLITE_OK ){
            rc = FUNC6(&sNC, pUpsert->pUpsertTargetWhere);
          }
          sNC.ncFlags = 0;
        }
        sNC.pSrcList = 0;
      }
    }
  }
  return rc;
}