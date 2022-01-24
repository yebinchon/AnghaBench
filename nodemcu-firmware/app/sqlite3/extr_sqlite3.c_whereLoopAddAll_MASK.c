#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_16__ {int jointype; } ;
struct SrcList_item {int /*<<< orphan*/  iCursor; TYPE_2__ fg; int /*<<< orphan*/  pTab; } ;
struct TYPE_17__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_3__ sqlite3 ;
struct TYPE_18__ {TYPE_5__* pNew; TYPE_6__* pWInfo; } ;
typedef  TYPE_4__ WhereLoopBuilder ;
struct TYPE_19__ {int iTab; int /*<<< orphan*/  maskSelf; } ;
typedef  TYPE_5__ WhereLoop ;
struct TYPE_20__ {size_t nLevel; int /*<<< orphan*/  sMaskSet; TYPE_1__* pParse; TYPE_7__* pTabList; } ;
typedef  TYPE_6__ WhereInfo ;
struct TYPE_21__ {struct SrcList_item* a; } ;
struct TYPE_15__ {TYPE_3__* db; } ;
typedef  TYPE_7__ SrcList ;
typedef  int /*<<< orphan*/  Bitmask ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int JT_CROSS ; 
 int JT_LEFT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC7(WhereLoopBuilder *pBuilder){
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

  /* Loop over the tables in the join, from left to right */
  pNew = pBuilder->pNew;
  FUNC6(pNew);
  for(iTab=0, pItem=pTabList->a; pItem<pEnd; iTab++, pItem++){
    Bitmask mUnusable = 0;
    pNew->iTab = iTab;
    pNew->maskSelf = FUNC1(&pWInfo->sMaskSet, pItem->iCursor);
    if( ((pItem->fg.jointype|priorJointype) & (JT_LEFT|JT_CROSS))!=0 ){
      /* This condition is true when pItem is the FROM clause term on the
      ** right-hand-side of a LEFT or CROSS JOIN.  */
      mPrereq = mPrior;
    }
    priorJointype = pItem->fg.jointype;
#ifndef SQLITE_OMIT_VIRTUALTABLE
    if( FUNC0(pItem->pTab) ){
      struct SrcList_item *p;
      for(p=&pItem[1]; p<pEnd; p++){
        if( mUnusable || (p->fg.jointype & (JT_LEFT|JT_CROSS)) ){
          mUnusable |= FUNC1(&pWInfo->sMaskSet, p->iCursor);
        }
      }
      rc = FUNC4(pBuilder, mPrereq, mUnusable);
    }else
#endif /* SQLITE_OMIT_VIRTUALTABLE */
    {
      rc = FUNC2(pBuilder, mPrereq);
    }
    if( rc==SQLITE_OK ){
      rc = FUNC3(pBuilder, mPrereq, mUnusable);
    }
    mPrior |= pNew->maskSelf;
    if( rc || db->mallocFailed ) break;
  }

  FUNC5(db, pNew);
  return rc;
}