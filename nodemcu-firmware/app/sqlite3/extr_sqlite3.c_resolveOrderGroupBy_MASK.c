#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  void* u16 ;
struct TYPE_16__ {int iOrderByCol; } ;
struct TYPE_17__ {TYPE_2__ x; } ;
struct ExprList_item {TYPE_3__ u; int /*<<< orphan*/ * pExpr; } ;
struct TYPE_20__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_19__ {int /*<<< orphan*/ * pParse; } ;
struct TYPE_18__ {TYPE_13__* pEList; } ;
struct TYPE_15__ {int /*<<< orphan*/  pExpr; } ;
struct TYPE_14__ {int nExpr; TYPE_1__* a; } ;
typedef  TYPE_4__ Select ;
typedef  int /*<<< orphan*/  Parse ;
typedef  TYPE_5__ NameContext ;
typedef  TYPE_6__ ExprList ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_13__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_6__*,char const*) ; 

__attribute__((used)) static int FUNC7(
  NameContext *pNC,     /* The name context of the SELECT statement */
  Select *pSelect,      /* The SELECT statement holding pOrderBy */
  ExprList *pOrderBy,   /* An ORDER BY or GROUP BY clause to resolve */
  const char *zType     /* Either "ORDER" or "GROUP", as appropriate */
){
  int i, j;                      /* Loop counters */
  int iCol;                      /* Column number */
  struct ExprList_item *pItem;   /* A term of the ORDER BY clause */
  Parse *pParse;                 /* Parsing context */
  int nResult;                   /* Number of terms in the result set */

  if( pOrderBy==0 ) return 0;
  nResult = pSelect->pEList->nExpr;
  pParse = pNC->pParse;
  for(i=0, pItem=pOrderBy->a; i<pOrderBy->nExpr; i++, pItem++){
    Expr *pE = pItem->pExpr;
    Expr *pE2 = FUNC4(pE);
    if( zType[0]!='G' ){
      iCol = FUNC0(pParse, pSelect->pEList, pE2);
      if( iCol>0 ){
        /* If an AS-name match is found, mark this ORDER BY column as being
        ** a copy of the iCol-th result-set column.  The subsequent call to
        ** sqlite3ResolveOrderGroupBy() will convert the expression to a
        ** copy of the iCol-th result-set expression. */
        pItem->u.x.iOrderByCol = (u16)iCol;
        continue;
      }
    }
    if( FUNC3(pE2, &iCol) ){
      /* The ORDER BY term is an integer constant.  Again, set the column
      ** number so that sqlite3ResolveOrderGroupBy() will convert the
      ** order-by term to a copy of the result-set expression */
      if( iCol<1 || iCol>0xffff ){
        FUNC1(pParse, zType, i+1, nResult);
        return 1;
      }
      pItem->u.x.iOrderByCol = (u16)iCol;
      continue;
    }

    /* Otherwise, treat the ORDER BY term as an ordinary expression */
    pItem->u.x.iOrderByCol = 0;
    if( FUNC5(pNC, pE) ){
      return 1;
    }
    for(j=0; j<pSelect->pEList->nExpr; j++){
      if( FUNC2(pE, pSelect->pEList->a[j].pExpr, -1)==0 ){
        pItem->u.x.iOrderByCol = j+1;
      }
    }
  }
  return FUNC6(pParse, pSelect, pOrderBy, zType);
}