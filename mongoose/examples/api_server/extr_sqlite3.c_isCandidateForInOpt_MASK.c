#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ pSelect; } ;
typedef  TYPE_4__ Table ;
struct TYPE_16__ {int nExpr; TYPE_3__* a; } ;
struct TYPE_15__ {int selFlags; scalar_t__ pGroupBy; scalar_t__ pOffset; TYPE_7__* pEList; TYPE_5__* pSrc; scalar_t__ pWhere; scalar_t__ pLimit; scalar_t__ pPrior; } ;
struct TYPE_14__ {int nSrc; TYPE_1__* a; } ;
struct TYPE_12__ {TYPE_2__* pExpr; } ;
struct TYPE_11__ {scalar_t__ op; } ;
struct TYPE_10__ {TYPE_4__* pTab; scalar_t__ pSelect; } ;
typedef  TYPE_5__ SrcList ;
typedef  TYPE_6__ Select ;
typedef  TYPE_7__ ExprList ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int SF_Aggregate ; 
 int SF_Distinct ; 
 scalar_t__ TK_COLUMN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(Select *p){
  SrcList *pSrc;
  ExprList *pEList;
  Table *pTab;
  if( p==0 ) return 0;                   /* right-hand side of IN is SELECT */
  if( p->pPrior ) return 0;              /* Not a compound SELECT */
  if( p->selFlags & (SF_Distinct|SF_Aggregate) ){
    FUNC3( (p->selFlags & (SF_Distinct|SF_Aggregate))==SF_Distinct );
    FUNC3( (p->selFlags & (SF_Distinct|SF_Aggregate))==SF_Aggregate );
    return 0; /* No DISTINCT keyword and no aggregate functions */
  }
  FUNC2( p->pGroupBy==0 );              /* Has no GROUP BY clause */
  if( p->pLimit ) return 0;              /* Has no LIMIT clause */
  FUNC2( p->pOffset==0 );               /* No LIMIT means no OFFSET */
  if( p->pWhere ) return 0;              /* Has no WHERE clause */
  pSrc = p->pSrc;
  FUNC2( pSrc!=0 );
  if( pSrc->nSrc!=1 ) return 0;          /* Single term in FROM clause */
  if( pSrc->a[0].pSelect ) return 0;     /* FROM is not a subquery or view */
  pTab = pSrc->a[0].pTab;
  if( FUNC1(pTab==0) ) return 0;
  FUNC2( pTab->pSelect==0 );            /* FROM clause is not a view */
  if( FUNC0(pTab) ) return 0;        /* FROM clause not a virtual table */
  pEList = p->pEList;
  if( pEList->nExpr!=1 ) return 0;       /* One column in the result set */
  if( pEList->a[0].pExpr->op!=TK_COLUMN ) return 0; /* Result is a column */
  return 1;
}