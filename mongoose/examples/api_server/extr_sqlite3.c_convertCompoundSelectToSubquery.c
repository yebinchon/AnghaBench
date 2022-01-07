
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct ExprList_item {TYPE_1__* pExpr; } ;
typedef int sqlite3 ;
typedef int dummy ;
struct TYPE_14__ {TYPE_5__* pParse; } ;
typedef TYPE_3__ Walker ;
typedef int Token ;
struct TYPE_16__ {int * db; } ;
struct TYPE_15__ {scalar_t__ pPrior; scalar_t__ op; scalar_t__ pOffset; scalar_t__ pLimit; TYPE_2__* pOrderBy; scalar_t__ pHaving; scalar_t__ pGroupBy; scalar_t__ pWhere; int pEList; int * pSrc; } ;
struct TYPE_13__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_12__ {int flags; } ;
typedef int SrcList ;
typedef TYPE_4__ Select ;
typedef TYPE_5__ Parse ;


 int EP_Collate ;
 scalar_t__ TK_ALL ;
 scalar_t__ TK_SELECT ;
 int WRC_Abort ;
 int WRC_Continue ;
 int memset (int *,int ,int) ;
 TYPE_4__* sqlite3DbMallocZero (int *,int) ;
 int sqlite3Expr (int *,scalar_t__,int ) ;
 int sqlite3ExprListAppend (TYPE_5__*,int ,int ) ;
 int * sqlite3SrcListAppendFromTerm (TYPE_5__*,int ,int ,int ,int *,TYPE_4__*,int ,int ) ;

__attribute__((used)) static int convertCompoundSelectToSubquery(Walker *pWalker, Select *p){
  int i;
  Select *pNew;
  Select *pX;
  sqlite3 *db;
  struct ExprList_item *a;
  SrcList *pNewSrc;
  Parse *pParse;
  Token dummy;

  if( p->pPrior==0 ) return WRC_Continue;
  if( p->pOrderBy==0 ) return WRC_Continue;
  for(pX=p; pX && (pX->op==TK_ALL || pX->op==TK_SELECT); pX=pX->pPrior){}
  if( pX==0 ) return WRC_Continue;
  a = p->pOrderBy->a;
  for(i=p->pOrderBy->nExpr-1; i>=0; i--){
    if( a[i].pExpr->flags & EP_Collate ) break;
  }
  if( i<0 ) return WRC_Continue;



  pParse = pWalker->pParse;
  db = pParse->db;
  pNew = sqlite3DbMallocZero(db, sizeof(*pNew) );
  if( pNew==0 ) return WRC_Abort;
  memset(&dummy, 0, sizeof(dummy));
  pNewSrc = sqlite3SrcListAppendFromTerm(pParse,0,0,0,&dummy,pNew,0,0);
  if( pNewSrc==0 ) return WRC_Abort;
  *pNew = *p;
  p->pSrc = pNewSrc;
  p->pEList = sqlite3ExprListAppend(pParse, 0, sqlite3Expr(db, TK_ALL, 0));
  p->op = TK_SELECT;
  p->pWhere = 0;
  pNew->pGroupBy = 0;
  pNew->pHaving = 0;
  pNew->pOrderBy = 0;
  p->pPrior = 0;
  pNew->pLimit = 0;
  pNew->pOffset = 0;
  return WRC_Continue;
}
