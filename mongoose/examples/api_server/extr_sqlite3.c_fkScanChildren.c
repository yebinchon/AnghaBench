
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_54__ TYPE_9__ ;
typedef struct TYPE_53__ TYPE_8__ ;
typedef struct TYPE_52__ TYPE_7__ ;
typedef struct TYPE_51__ TYPE_6__ ;
typedef struct TYPE_50__ TYPE_5__ ;
typedef struct TYPE_49__ TYPE_4__ ;
typedef struct TYPE_48__ TYPE_3__ ;
typedef struct TYPE_47__ TYPE_2__ ;
typedef struct TYPE_46__ TYPE_1__ ;
typedef struct TYPE_45__ TYPE_18__ ;
typedef struct TYPE_44__ TYPE_12__ ;
typedef struct TYPE_43__ TYPE_11__ ;
typedef struct TYPE_42__ TYPE_10__ ;


struct TYPE_49__ {TYPE_1__* pDfltColl; } ;
typedef TYPE_4__ sqlite3 ;
typedef int WhereInfo ;
typedef int Vdbe ;
struct TYPE_50__ {int iPKey; TYPE_12__* aCol; } ;
typedef TYPE_5__ Table ;
struct TYPE_54__ {int* aiColumn; TYPE_5__* pTable; } ;
struct TYPE_53__ {TYPE_7__* pParse; TYPE_6__* pSrcList; } ;
struct TYPE_52__ {TYPE_4__* db; } ;
struct TYPE_51__ {TYPE_3__* a; } ;
struct TYPE_48__ {int iCursor; } ;
struct TYPE_47__ {int iFrom; } ;
struct TYPE_46__ {char* zName; } ;
struct TYPE_45__ {int mayAbort; } ;
struct TYPE_44__ {char* zColl; char* zName; void* affinity; } ;
struct TYPE_43__ {int iTable; int iColumn; void* affinity; } ;
struct TYPE_42__ {scalar_t__ isDeferred; int nCol; TYPE_5__* pFrom; TYPE_2__* aCol; } ;
typedef TYPE_6__ SrcList ;
typedef TYPE_7__ Parse ;
typedef TYPE_8__ NameContext ;
typedef TYPE_9__ Index ;
typedef TYPE_10__ FKey ;
typedef TYPE_11__ Expr ;
typedef TYPE_12__ Column ;


 int OP_FkCounter ;
 int OP_FkIfZero ;
 void* SQLITE_AFF_INTEGER ;
 int TK_COLUMN ;
 int TK_EQ ;
 int TK_ID ;
 int TK_NE ;
 int TK_REGISTER ;
 int assert (int) ;
 int memset (TYPE_8__*,int ,int) ;
 TYPE_11__* sqlite3Expr (TYPE_4__*,int ,char const*) ;
 TYPE_11__* sqlite3ExprAddCollateString (TYPE_7__*,TYPE_11__*,char const*) ;
 TYPE_11__* sqlite3ExprAnd (TYPE_4__*,TYPE_11__*,TYPE_11__*) ;
 int sqlite3ExprDelete (TYPE_4__*,TYPE_11__*) ;
 int * sqlite3GetVdbe (TYPE_7__*) ;
 TYPE_11__* sqlite3PExpr (TYPE_7__*,int ,TYPE_11__*,TYPE_11__*,int ) ;
 TYPE_18__* sqlite3ParseToplevel (TYPE_7__*) ;
 int sqlite3ResolveExprNames (TYPE_8__*,TYPE_11__*) ;
 int sqlite3VdbeAddOp2 (int *,int ,scalar_t__,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int * sqlite3WhereBegin (TYPE_7__*,TYPE_6__*,TYPE_11__*,int ,int ,int ,int ) ;
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

  assert( !pIdx || pIdx->pTable==pTab );

  if( nIncr<0 ){
    iFkIfZero = sqlite3VdbeAddOp2(v, OP_FkIfZero, pFKey->isDeferred, 0);
  }
  for(i=0; i<pFKey->nCol; i++){
    Expr *pLeft;
    Expr *pRight;
    Expr *pEq;
    int iCol;
    const char *zCol;

    pLeft = sqlite3Expr(db, TK_REGISTER, 0);
    if( pLeft ){


      if( pIdx ){
        Column *pCol;
        const char *zColl;
        iCol = pIdx->aiColumn[i];
        pCol = &pTab->aCol[iCol];
        if( pTab->iPKey==iCol ) iCol = -1;
        pLeft->iTable = regData+iCol+1;
        pLeft->affinity = pCol->affinity;
        zColl = pCol->zColl;
        if( zColl==0 ) zColl = db->pDfltColl->zName;
        pLeft = sqlite3ExprAddCollateString(pParse, pLeft, zColl);
      }else{
        pLeft->iTable = regData;
        pLeft->affinity = SQLITE_AFF_INTEGER;
      }
    }
    iCol = aiCol ? aiCol[i] : pFKey->aCol[0].iFrom;
    assert( iCol>=0 );
    zCol = pFKey->pFrom->aCol[iCol].zName;
    pRight = sqlite3Expr(db, TK_ID, zCol);
    pEq = sqlite3PExpr(pParse, TK_EQ, pLeft, pRight, 0);
    pWhere = sqlite3ExprAnd(db, pWhere, pEq);
  }





  if( pTab==pFKey->pFrom && nIncr>0 ){
    Expr *pEq;
    Expr *pLeft;
    Expr *pRight;
    pLeft = sqlite3Expr(db, TK_REGISTER, 0);
    pRight = sqlite3Expr(db, TK_COLUMN, 0);
    if( pLeft && pRight ){
      pLeft->iTable = regData;
      pLeft->affinity = SQLITE_AFF_INTEGER;
      pRight->iTable = pSrc->a[0].iCursor;
      pRight->iColumn = -1;
    }
    pEq = sqlite3PExpr(pParse, TK_NE, pLeft, pRight, 0);
    pWhere = sqlite3ExprAnd(db, pWhere, pEq);
  }


  memset(&sNameContext, 0, sizeof(NameContext));
  sNameContext.pSrcList = pSrc;
  sNameContext.pParse = pParse;
  sqlite3ResolveExprNames(&sNameContext, pWhere);





  pWInfo = sqlite3WhereBegin(pParse, pSrc, pWhere, 0, 0, 0, 0);
  if( nIncr>0 && pFKey->isDeferred==0 ){
    sqlite3ParseToplevel(pParse)->mayAbort = 1;
  }
  sqlite3VdbeAddOp2(v, OP_FkCounter, pFKey->isDeferred, nIncr);
  if( pWInfo ){
    sqlite3WhereEnd(pWInfo);
  }


  sqlite3ExprDelete(db, pWhere);
  if( iFkIfZero ){
    sqlite3VdbeJumpHere(v, iFkIfZero);
  }
}
