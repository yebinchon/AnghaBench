#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct SrcCount {int /*<<< orphan*/  nOther; int /*<<< orphan*/  nThis; TYPE_4__* pSrc; } ;
struct TYPE_9__ {struct SrcCount* pSrcCount; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
typedef  TYPE_3__ Walker ;
struct TYPE_12__ {scalar_t__ op; scalar_t__ iTable; } ;
struct TYPE_11__ {int nSrc; TYPE_1__* a; } ;
struct TYPE_8__ {scalar_t__ iCursor; } ;
typedef  TYPE_4__ SrcList ;
typedef  TYPE_5__ Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ TK_AGG_COLUMN ; 
 scalar_t__ TK_COLUMN ; 
 int WRC_Continue ; 

__attribute__((used)) static int FUNC1(Walker *pWalker, Expr *pExpr){
  /* The NEVER() on the second term is because sqlite3FunctionUsesThisSrc()
  ** is always called before sqlite3ExprAnalyzeAggregates() and so the
  ** TK_COLUMNs have not yet been converted into TK_AGG_COLUMN.  If
  ** sqlite3FunctionUsesThisSrc() is used differently in the future, the
  ** NEVER() will need to be removed. */
  if( pExpr->op==TK_COLUMN || FUNC0(pExpr->op==TK_AGG_COLUMN) ){
    int i;
    struct SrcCount *p = pWalker->u.pSrcCount;
    SrcList *pSrc = p->pSrc;
    for(i=0; i<pSrc->nSrc; i++){
      if( pExpr->iTable==pSrc->a[i].iCursor ) break;
    }
    if( i<pSrc->nSrc ){
      p->nThis++;
    }else{
      p->nOther++;
    }
  }
  return WRC_Continue;
}