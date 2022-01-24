#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_25__ {int /*<<< orphan*/  zToken; } ;
struct TYPE_28__ {int flags; scalar_t__ op; scalar_t__ iTable; int /*<<< orphan*/  flags2; TYPE_2__ u; } ;
struct TYPE_27__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_26__ {scalar_t__ nAlias; int /*<<< orphan*/ * db; } ;
struct TYPE_24__ {scalar_t__ iAlias; TYPE_5__* pExpr; } ;
typedef  TYPE_3__ Parse ;
typedef  TYPE_4__ ExprList ;
typedef  TYPE_5__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP2_MallocedToken ; 
 int /*<<< orphan*/  EP_IntValue ; 
 int EP_Reduced ; 
 int EP_Resolved ; 
 int /*<<< orphan*/  EP_Static ; 
 int EP_TokenOnly ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TK_AS ; 
 scalar_t__ TK_COLLATE ; 
 scalar_t__ TK_COLUMN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_5__* FUNC9 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(
  Parse *pParse,         /* Parsing context */
  ExprList *pEList,      /* A result set */
  int iCol,              /* A column in the result set.  0..pEList->nExpr-1 */
  Expr *pExpr,           /* Transform this into an alias to the result set */
  const char *zType,     /* "GROUP" or "ORDER" or "" */
  int nSubquery          /* Number of subqueries that the label is moving */
){
  Expr *pOrig;           /* The iCol-th column of the result set */
  Expr *pDup;            /* Copy of pOrig */
  sqlite3 *db;           /* The database connection */

  FUNC2( iCol>=0 && iCol<pEList->nExpr );
  pOrig = pEList->a[iCol].pExpr;
  FUNC2( pOrig!=0 );
  FUNC2( pOrig->flags & EP_Resolved );
  db = pParse->db;
  pDup = FUNC9(db, pOrig, 0);
  if( pDup==0 ) return;
  if( pOrig->op!=TK_COLUMN && zType[0]!='G' ){
    FUNC3(pDup, nSubquery);
    pDup = FUNC10(pParse, TK_AS, pDup, 0, 0);
    if( pDup==0 ) return;
    if( pEList->a[iCol].iAlias==0 ){
      pEList->a[iCol].iAlias = (u16)(++pParse->nAlias);
    }
    pDup->iTable = pEList->a[iCol].iAlias;
  }
  if( pExpr->op==TK_COLLATE ){
    pDup = FUNC7(pParse, pDup, pExpr->u.zToken);
  }

  /* Before calling sqlite3ExprDelete(), set the EP_Static flag. This 
  ** prevents ExprDelete() from deleting the Expr structure itself,
  ** allowing it to be repopulated by the memcpy() on the following line.
  ** The pExpr->u.zToken might point into memory that will be freed by the
  ** sqlite3DbFree(db, pDup) on the last line of this block, so be sure to
  ** make a copy of the token before doing the sqlite3DbFree().
  */
  FUNC1(pExpr, EP_Static);
  FUNC8(db, pExpr);
  FUNC4(pExpr, pDup, sizeof(*pExpr));
  if( !FUNC0(pExpr, EP_IntValue) && pExpr->u.zToken!=0 ){
    FUNC2( (pExpr->flags & (EP_Reduced|EP_TokenOnly))==0 );
    pExpr->u.zToken = FUNC6(db, pExpr->u.zToken);
    pExpr->flags2 |= EP2_MallocedToken;
  }
  FUNC5(db, pDup);
}