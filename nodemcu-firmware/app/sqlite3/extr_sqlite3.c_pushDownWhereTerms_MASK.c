#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ op; struct TYPE_19__* pLeft; struct TYPE_19__* pRight; } ;
struct TYPE_18__ {int /*<<< orphan*/  db; } ;
struct TYPE_17__ {int selFlags; scalar_t__ pLimit; struct TYPE_17__* pPrior; int /*<<< orphan*/  pWhere; int /*<<< orphan*/  pEList; } ;
struct TYPE_16__ {int iTable; int iNewTable; int /*<<< orphan*/  pEList; scalar_t__ isLeftJoin; TYPE_3__* pParse; } ;
typedef  TYPE_1__ SubstContext ;
typedef  TYPE_2__ Select ;
typedef  TYPE_3__ Parse ;
typedef  TYPE_4__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_FromJoin ; 
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int SF_Aggregate ; 
 int SF_Recursive ; 
 scalar_t__ TK_AND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int) ; 
 TYPE_4__* FUNC4 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(
  Parse *pParse,        /* Parse context (for malloc() and error reporting) */
  Select *pSubq,        /* The subquery whose WHERE clause is to be augmented */
  Expr *pWhere,         /* The WHERE clause of the outer query */
  int iCursor           /* Cursor number of the subquery */
){
  Expr *pNew;
  int nChng = 0;
  Select *pX;           /* For looping over compound SELECTs in pSubq */
  if( pWhere==0 ) return 0;
  for(pX=pSubq; pX; pX=pX->pPrior){
    if( (pX->selFlags & (SF_Aggregate|SF_Recursive))!=0 ){
      FUNC5( pX->selFlags & SF_Aggregate );
      FUNC5( pX->selFlags & SF_Recursive );
      FUNC5( pX!=pSubq );
      return 0; /* restrictions (1) and (2) */
    }
  }
  if( pSubq->pLimit!=0 ){
    return 0; /* restriction (3) */
  }
  while( pWhere->op==TK_AND ){
    nChng += FUNC6(pParse, pSubq, pWhere->pRight, iCursor);
    pWhere = pWhere->pLeft;
  }
  if( FUNC0(pWhere,EP_FromJoin) ) return 0; /* restriction 5 */
  if( FUNC3(pWhere, iCursor) ){
    nChng++;
    while( pSubq ){
      SubstContext x;
      pNew = FUNC2(pParse->db, pWhere, 0);
      x.pParse = pParse;
      x.iTable = iCursor;
      x.iNewTable = iCursor;
      x.isLeftJoin = 0;
      x.pEList = pSubq->pEList;
      pNew = FUNC4(&x, pNew);
      pSubq->pWhere = FUNC1(pParse->db, pSubq->pWhere, pNew);
      pSubq = pSubq->pPrior;
    }
  }
  return nChng;
}