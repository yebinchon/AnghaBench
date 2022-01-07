
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int sqlite3 ;
typedef size_t i16 ;
typedef int WhereInfo ;
typedef int Vdbe ;
struct TYPE_28__ {TYPE_3__* aCol; } ;
typedef TYPE_4__ Table ;
struct TYPE_33__ {int nCol; int isDeferred; TYPE_4__* pFrom; TYPE_1__* aCol; } ;
struct TYPE_32__ {int nKeyCol; int* aiColumn; TYPE_4__* pTable; } ;
struct TYPE_31__ {TYPE_6__* pParse; TYPE_5__* pSrcList; } ;
struct TYPE_30__ {scalar_t__ nErr; int * db; } ;
struct TYPE_29__ {TYPE_2__* a; } ;
struct TYPE_27__ {char* zName; } ;
struct TYPE_26__ {int iCursor; } ;
struct TYPE_25__ {int iFrom; } ;
typedef TYPE_5__ SrcList ;
typedef TYPE_6__ Parse ;
typedef TYPE_7__ NameContext ;
typedef TYPE_8__ Index ;
typedef TYPE_9__ FKey ;
typedef int Expr ;


 scalar_t__ HasRowid (TYPE_4__*) ;
 int OP_FkCounter ;
 int OP_FkIfZero ;
 int TK_EQ ;
 int TK_ID ;
 int TK_IS ;
 int TK_NE ;
 int TK_NOT ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 int * exprTableColumn (int *,TYPE_4__*,int ,int) ;
 int * exprTableRegister (TYPE_6__*,TYPE_4__*,int,size_t) ;
 int memset (TYPE_7__*,int ,int) ;
 int * sqlite3Expr (int *,int ,char const*) ;
 int * sqlite3ExprAnd (int *,int *,int *) ;
 int sqlite3ExprDelete (int *,int *) ;
 int * sqlite3GetVdbe (TYPE_6__*) ;
 int * sqlite3PExpr (TYPE_6__*,int ,int *,int *) ;
 int sqlite3ResolveExprNames (TYPE_7__*,int *) ;
 int sqlite3VdbeAddOp2 (int *,int ,int ,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int * sqlite3WhereBegin (TYPE_6__*,TYPE_5__*,int *,int ,int ,int ,int ) ;
 int sqlite3WhereEnd (int *) ;

__attribute__((used)) static void fkScanChildren(
  Parse *pParse,
  SrcList *pSrc,
  Table *pTab,
  Index *pIdx,
  FKey *pFKey,
  int *aiCol,
  int regData,
  int nIncr
){
  sqlite3 *db = pParse->db;
  int i;
  Expr *pWhere = 0;
  NameContext sNameContext;
  WhereInfo *pWInfo;
  int iFkIfZero = 0;
  Vdbe *v = sqlite3GetVdbe(pParse);

  assert( pIdx==0 || pIdx->pTable==pTab );
  assert( pIdx==0 || pIdx->nKeyCol==pFKey->nCol );
  assert( pIdx!=0 || pFKey->nCol==1 );
  assert( pIdx!=0 || HasRowid(pTab) );

  if( nIncr<0 ){
    iFkIfZero = sqlite3VdbeAddOp2(v, OP_FkIfZero, pFKey->isDeferred, 0);
    VdbeCoverage(v);
  }
  for(i=0; i<pFKey->nCol; i++){
    Expr *pLeft;
    Expr *pRight;
    Expr *pEq;
    i16 iCol;
    const char *zCol;

    iCol = pIdx ? pIdx->aiColumn[i] : -1;
    pLeft = exprTableRegister(pParse, pTab, regData, iCol);
    iCol = aiCol ? aiCol[i] : pFKey->aCol[0].iFrom;
    assert( iCol>=0 );
    zCol = pFKey->pFrom->aCol[iCol].zName;
    pRight = sqlite3Expr(db, TK_ID, zCol);
    pEq = sqlite3PExpr(pParse, TK_EQ, pLeft, pRight);
    pWhere = sqlite3ExprAnd(db, pWhere, pEq);
  }
  if( pTab==pFKey->pFrom && nIncr>0 ){
    Expr *pNe;
    Expr *pLeft;
    Expr *pRight;
    if( HasRowid(pTab) ){
      pLeft = exprTableRegister(pParse, pTab, regData, -1);
      pRight = exprTableColumn(db, pTab, pSrc->a[0].iCursor, -1);
      pNe = sqlite3PExpr(pParse, TK_NE, pLeft, pRight);
    }else{
      Expr *pEq, *pAll = 0;
      assert( pIdx!=0 );
      for(i=0; i<pIdx->nKeyCol; i++){
        i16 iCol = pIdx->aiColumn[i];
        assert( iCol>=0 );
        pLeft = exprTableRegister(pParse, pTab, regData, iCol);
        pRight = sqlite3Expr(db, TK_ID, pTab->aCol[iCol].zName);
        pEq = sqlite3PExpr(pParse, TK_IS, pLeft, pRight);
        pAll = sqlite3ExprAnd(db, pAll, pEq);
      }
      pNe = sqlite3PExpr(pParse, TK_NOT, pAll, 0);
    }
    pWhere = sqlite3ExprAnd(db, pWhere, pNe);
  }


  memset(&sNameContext, 0, sizeof(NameContext));
  sNameContext.pSrcList = pSrc;
  sNameContext.pParse = pParse;
  sqlite3ResolveExprNames(&sNameContext, pWhere);




  if( pParse->nErr==0 ){
    pWInfo = sqlite3WhereBegin(pParse, pSrc, pWhere, 0, 0, 0, 0);
    sqlite3VdbeAddOp2(v, OP_FkCounter, pFKey->isDeferred, nIncr);
    if( pWInfo ){
      sqlite3WhereEnd(pWInfo);
    }
  }


  sqlite3ExprDelete(db, pWhere);
  if( iFkIfZero ){
    sqlite3VdbeJumpHere(v, iFkIfZero);
  }
}
