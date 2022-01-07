
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_17__ {int jointype; } ;
struct SrcList_item {int iCursor; TYPE_2__ fg; int pTab; } ;
struct TYPE_19__ {scalar_t__ mallocFailed; } ;
typedef TYPE_4__ sqlite3 ;
struct TYPE_20__ {TYPE_3__* pWC; int iPlanLimit; TYPE_6__* pNew; TYPE_7__* pWInfo; } ;
typedef TYPE_5__ WhereLoopBuilder ;
struct TYPE_21__ {int iTab; int maskSelf; } ;
typedef TYPE_6__ WhereLoop ;
struct TYPE_22__ {size_t nLevel; int sMaskSet; TYPE_1__* pParse; TYPE_8__* pTabList; } ;
typedef TYPE_7__ WhereInfo ;
struct TYPE_23__ {struct SrcList_item* a; } ;
struct TYPE_18__ {scalar_t__ hasOr; } ;
struct TYPE_16__ {TYPE_4__* db; } ;
typedef TYPE_8__ SrcList ;
typedef int Bitmask ;


 scalar_t__ IsVirtual (int ) ;
 int JT_CROSS ;
 int JT_LEFT ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_QUERY_PLANNER_LIMIT ;
 scalar_t__ SQLITE_QUERY_PLANNER_LIMIT_INCR ;
 int SQLITE_WARNING ;
 int sqlite3WhereGetMask (int *,int ) ;
 int sqlite3_log (int ,char*) ;
 int whereLoopAddBtree (TYPE_5__*,int ) ;
 int whereLoopAddOr (TYPE_5__*,int ,int ) ;
 int whereLoopAddVirtual (TYPE_5__*,int ,int ) ;
 int whereLoopClear (TYPE_4__*,TYPE_6__*) ;
 int whereLoopInit (TYPE_6__*) ;

__attribute__((used)) static int whereLoopAddAll(WhereLoopBuilder *pBuilder){
  WhereInfo *pWInfo = pBuilder->pWInfo;
  Bitmask mPrereq = 0;
  Bitmask mPrior = 0;
  int iTab;
  SrcList *pTabList = pWInfo->pTabList;
  struct SrcList_item *pItem;
  struct SrcList_item *pEnd = &pTabList->a[pWInfo->nLevel];
  sqlite3 *db = pWInfo->pParse->db;
  int rc = SQLITE_OK;
  WhereLoop *pNew;
  u8 priorJointype = 0;


  pNew = pBuilder->pNew;
  whereLoopInit(pNew);
  pBuilder->iPlanLimit = SQLITE_QUERY_PLANNER_LIMIT;
  for(iTab=0, pItem=pTabList->a; pItem<pEnd; iTab++, pItem++){
    Bitmask mUnusable = 0;
    pNew->iTab = iTab;
    pBuilder->iPlanLimit += SQLITE_QUERY_PLANNER_LIMIT_INCR;
    pNew->maskSelf = sqlite3WhereGetMask(&pWInfo->sMaskSet, pItem->iCursor);
    if( ((pItem->fg.jointype|priorJointype) & (JT_LEFT|JT_CROSS))!=0 ){


      mPrereq = mPrior;
    }
    priorJointype = pItem->fg.jointype;

    if( IsVirtual(pItem->pTab) ){
      struct SrcList_item *p;
      for(p=&pItem[1]; p<pEnd; p++){
        if( mUnusable || (p->fg.jointype & (JT_LEFT|JT_CROSS)) ){
          mUnusable |= sqlite3WhereGetMask(&pWInfo->sMaskSet, p->iCursor);
        }
      }
      rc = whereLoopAddVirtual(pBuilder, mPrereq, mUnusable);
    }else

    {
      rc = whereLoopAddBtree(pBuilder, mPrereq);
    }
    if( rc==SQLITE_OK && pBuilder->pWC->hasOr ){
      rc = whereLoopAddOr(pBuilder, mPrereq, mUnusable);
    }
    mPrior |= pNew->maskSelf;
    if( rc || db->mallocFailed ){
      if( rc==SQLITE_DONE ){

        sqlite3_log(SQLITE_WARNING, "abbreviated query algorithm search");
        rc = SQLITE_OK;
      }else{
        break;
      }
    }
  }

  whereLoopClear(db, pNew);
  return rc;
}
