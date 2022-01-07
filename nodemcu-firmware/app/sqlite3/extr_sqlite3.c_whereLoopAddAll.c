
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_16__ {int jointype; } ;
struct SrcList_item {int iCursor; TYPE_2__ fg; int pTab; } ;
struct TYPE_17__ {scalar_t__ mallocFailed; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_18__ {TYPE_5__* pNew; TYPE_6__* pWInfo; } ;
typedef TYPE_4__ WhereLoopBuilder ;
struct TYPE_19__ {int iTab; int maskSelf; } ;
typedef TYPE_5__ WhereLoop ;
struct TYPE_20__ {size_t nLevel; int sMaskSet; TYPE_1__* pParse; TYPE_7__* pTabList; } ;
typedef TYPE_6__ WhereInfo ;
struct TYPE_21__ {struct SrcList_item* a; } ;
struct TYPE_15__ {TYPE_3__* db; } ;
typedef TYPE_7__ SrcList ;
typedef int Bitmask ;


 scalar_t__ IsVirtual (int ) ;
 int JT_CROSS ;
 int JT_LEFT ;
 int SQLITE_OK ;
 int sqlite3WhereGetMask (int *,int ) ;
 int whereLoopAddBtree (TYPE_4__*,int ) ;
 int whereLoopAddOr (TYPE_4__*,int ,int ) ;
 int whereLoopAddVirtual (TYPE_4__*,int ,int ) ;
 int whereLoopClear (TYPE_3__*,TYPE_5__*) ;
 int whereLoopInit (TYPE_5__*) ;

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
  for(iTab=0, pItem=pTabList->a; pItem<pEnd; iTab++, pItem++){
    Bitmask mUnusable = 0;
    pNew->iTab = iTab;
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
    if( rc==SQLITE_OK ){
      rc = whereLoopAddOr(pBuilder, mPrereq, mUnusable);
    }
    mPrior |= pNew->maskSelf;
    if( rc || db->mallocFailed ) break;
  }

  whereLoopClear(db, pNew);
  return rc;
}
