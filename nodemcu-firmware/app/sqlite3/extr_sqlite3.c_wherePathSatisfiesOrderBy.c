
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
typedef struct TYPE_47__ TYPE_34__ ;
typedef struct TYPE_46__ TYPE_30__ ;
typedef struct TYPE_45__ TYPE_2__ ;
typedef struct TYPE_44__ TYPE_1__ ;
typedef struct TYPE_43__ TYPE_18__ ;
typedef struct TYPE_42__ TYPE_17__ ;
typedef struct TYPE_41__ TYPE_16__ ;
typedef struct TYPE_40__ TYPE_15__ ;
typedef struct TYPE_39__ TYPE_14__ ;
typedef struct TYPE_38__ TYPE_13__ ;
typedef struct TYPE_37__ TYPE_12__ ;
typedef struct TYPE_36__ TYPE_11__ ;
typedef struct TYPE_35__ TYPE_10__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_35__ {TYPE_18__* pDfltColl; } ;
typedef TYPE_10__ sqlite3 ;
typedef int i8 ;
struct TYPE_36__ {int eOperator; TYPE_17__* pExpr; } ;
typedef TYPE_11__ WhereTerm ;
struct TYPE_37__ {TYPE_13__** aLoop; } ;
typedef TYPE_12__ WherePath ;
struct TYPE_52__ {int nIdxCol; int nEq; TYPE_15__* pIndex; } ;
struct TYPE_44__ {scalar_t__ isOrdered; } ;
struct TYPE_53__ {TYPE_7__ btree; TYPE_1__ vtab; } ;
struct TYPE_38__ {int maskSelf; int wsFlags; size_t iTab; int nLTerm; int nSkip; TYPE_8__ u; TYPE_11__** aLTerm; } ;
typedef TYPE_13__ WhereLoop ;
struct TYPE_39__ {int sMaskSet; TYPE_30__* pParse; int sWC; TYPE_3__* pTabList; } ;
typedef TYPE_14__ WhereInfo ;
struct TYPE_54__ {int sortOrder; TYPE_17__* pExpr; } ;
struct TYPE_51__ {TYPE_5__* a; } ;
struct TYPE_50__ {int pExpr; } ;
struct TYPE_49__ {scalar_t__ notNull; } ;
struct TYPE_48__ {TYPE_2__* a; } ;
struct TYPE_47__ {int iPKey; TYPE_4__* aCol; } ;
struct TYPE_46__ {TYPE_10__* db; } ;
struct TYPE_45__ {int iCursor; } ;
struct TYPE_43__ {char* zName; } ;
struct TYPE_42__ {scalar_t__ op; int iTable; int iColumn; } ;
struct TYPE_41__ {int nExpr; TYPE_9__* a; } ;
struct TYPE_40__ {int nKeyCol; int nColumn; int* aiColumn; int* aSortOrder; char const** azColl; TYPE_6__* aColExpr; TYPE_34__* pTable; scalar_t__ bUnordered; } ;
typedef TYPE_15__ Index ;
typedef TYPE_16__ ExprList ;
typedef TYPE_17__ Expr ;
typedef TYPE_18__ CollSeq ;
typedef int Bitmask ;


 scalar_t__ ALWAYS (int) ;
 int BMS ;
 int HasRowid (TYPE_34__*) ;
 int IsUniqueIndex (TYPE_15__*) ;
 int MASKBIT (int) ;
 scalar_t__ OptimizationDisabled (TYPE_10__*,int ) ;
 int SQLITE_OrderByIdxJoin ;
 scalar_t__ TK_COLUMN ;
 scalar_t__ TK_IS ;
 int WHERE_DISTINCTBY ;
 int WHERE_GROUPBY ;
 int WHERE_IPK ;
 int WHERE_ONEROW ;
 int WHERE_ORDERBY_LIMIT ;
 int WHERE_VIRTUALTABLE ;
 int WO_EQ ;
 int WO_IN ;
 int WO_IS ;
 int WO_ISNULL ;
 int XN_ROWID ;
 int assert (int) ;
 TYPE_18__* sqlite3ExprCollSeq (TYPE_30__*,TYPE_17__*) ;
 scalar_t__ sqlite3ExprCompare (TYPE_17__*,int ,int) ;
 int sqlite3ExprIsConstant (TYPE_17__*) ;
 TYPE_17__* sqlite3ExprSkipCollate (TYPE_17__*) ;
 scalar_t__ sqlite3StrICmp (char const*,char const*) ;
 int sqlite3WhereExprUsage (int *,TYPE_17__*) ;
 TYPE_11__* sqlite3WhereFindTerm (int *,int,int,int,int,int ) ;
 int testcase (int) ;

__attribute__((used)) static i8 wherePathSatisfiesOrderBy(
  WhereInfo *pWInfo,
  ExprList *pOrderBy,
  WherePath *pPath,
  u16 wctrlFlags,
  u16 nLoop,
  WhereLoop *pLast,
  Bitmask *pRevMask
){
  u8 revSet;
  u8 rev;
  u8 revIdx;
  u8 isOrderDistinct;
  u8 distinctColumns;
  u8 isMatch;
  u16 eqOpMask;
  u16 nKeyCol;
  u16 nColumn;
  u16 nOrderBy;
  int iLoop;
  int i, j;
  int iCur;
  int iColumn;
  WhereLoop *pLoop = 0;
  WhereTerm *pTerm;
  Expr *pOBExpr;
  CollSeq *pColl;
  Index *pIndex;
  sqlite3 *db = pWInfo->pParse->db;
  Bitmask obSat = 0;
  Bitmask obDone;
  Bitmask orderDistinctMask;
  Bitmask ready;
  assert( pOrderBy!=0 );
  if( nLoop && OptimizationDisabled(db, SQLITE_OrderByIdxJoin) ) return 0;

  nOrderBy = pOrderBy->nExpr;
  testcase( nOrderBy==BMS-1 );
  if( nOrderBy>BMS-1 ) return 0;
  isOrderDistinct = 1;
  obDone = MASKBIT(nOrderBy)-1;
  orderDistinctMask = 0;
  ready = 0;
  eqOpMask = WO_EQ | WO_IS | WO_ISNULL;
  if( wctrlFlags & WHERE_ORDERBY_LIMIT ) eqOpMask |= WO_IN;
  for(iLoop=0; isOrderDistinct && obSat<obDone && iLoop<=nLoop; iLoop++){
    if( iLoop>0 ) ready |= pLoop->maskSelf;
    if( iLoop<nLoop ){
      pLoop = pPath->aLoop[iLoop];
      if( wctrlFlags & WHERE_ORDERBY_LIMIT ) continue;
    }else{
      pLoop = pLast;
    }
    if( pLoop->wsFlags & WHERE_VIRTUALTABLE ){
      if( pLoop->u.vtab.isOrdered ) obSat = obDone;
      break;
    }else{
      pLoop->u.btree.nIdxCol = 0;
    }
    iCur = pWInfo->pTabList->a[pLoop->iTab].iCursor;






    for(i=0; i<nOrderBy; i++){
      if( MASKBIT(i) & obSat ) continue;
      pOBExpr = sqlite3ExprSkipCollate(pOrderBy->a[i].pExpr);
      if( pOBExpr->op!=TK_COLUMN ) continue;
      if( pOBExpr->iTable!=iCur ) continue;
      pTerm = sqlite3WhereFindTerm(&pWInfo->sWC, iCur, pOBExpr->iColumn,
                       ~ready, eqOpMask, 0);
      if( pTerm==0 ) continue;
      if( pTerm->eOperator==WO_IN ){



        assert( wctrlFlags & WHERE_ORDERBY_LIMIT );
        for(j=0; j<pLoop->nLTerm && pTerm!=pLoop->aLTerm[j]; j++){}
        if( j>=pLoop->nLTerm ) continue;
      }
      if( (pTerm->eOperator&(WO_EQ|WO_IS))!=0 && pOBExpr->iColumn>=0 ){
        const char *z1, *z2;
        pColl = sqlite3ExprCollSeq(pWInfo->pParse, pOrderBy->a[i].pExpr);
        if( !pColl ) pColl = db->pDfltColl;
        z1 = pColl->zName;
        pColl = sqlite3ExprCollSeq(pWInfo->pParse, pTerm->pExpr);
        if( !pColl ) pColl = db->pDfltColl;
        z2 = pColl->zName;
        if( sqlite3StrICmp(z1, z2)!=0 ) continue;
        testcase( pTerm->pExpr->op==TK_IS );
      }
      obSat |= MASKBIT(i);
    }

    if( (pLoop->wsFlags & WHERE_ONEROW)==0 ){
      if( pLoop->wsFlags & WHERE_IPK ){
        pIndex = 0;
        nKeyCol = 0;
        nColumn = 1;
      }else if( (pIndex = pLoop->u.btree.pIndex)==0 || pIndex->bUnordered ){
        return 0;
      }else{
        nKeyCol = pIndex->nKeyCol;
        nColumn = pIndex->nColumn;
        assert( nColumn==nKeyCol+1 || !HasRowid(pIndex->pTable) );
        assert( pIndex->aiColumn[nColumn-1]==XN_ROWID
                          || !HasRowid(pIndex->pTable));
        isOrderDistinct = IsUniqueIndex(pIndex);
      }




      rev = revSet = 0;
      distinctColumns = 0;
      for(j=0; j<nColumn; j++){
        u8 bOnce = 1;

        assert( j>=pLoop->u.btree.nEq
            || (pLoop->aLTerm[j]==0)==(j<pLoop->nSkip)
        );
        if( j<pLoop->u.btree.nEq && j>=pLoop->nSkip ){
          u16 eOp = pLoop->aLTerm[j]->eOperator;
          if( (eOp & eqOpMask)!=0 ){
            if( eOp & WO_ISNULL ){
              testcase( isOrderDistinct );
              isOrderDistinct = 0;
            }
            continue;
          }else if( ALWAYS(eOp & WO_IN) ){




            Expr *pX = pLoop->aLTerm[j]->pExpr;
            for(i=j+1; i<pLoop->u.btree.nEq; i++){
              if( pLoop->aLTerm[i]->pExpr==pX ){
                assert( (pLoop->aLTerm[i]->eOperator & WO_IN) );
                bOnce = 0;
                break;
              }
            }
          }
        }




        if( pIndex ){
          iColumn = pIndex->aiColumn[j];
          revIdx = pIndex->aSortOrder[j];
          if( iColumn==pIndex->pTable->iPKey ) iColumn = -1;
        }else{
          iColumn = XN_ROWID;
          revIdx = 0;
        }




        if( isOrderDistinct
         && iColumn>=0
         && j>=pLoop->u.btree.nEq
         && pIndex->pTable->aCol[iColumn].notNull==0
        ){
          isOrderDistinct = 0;
        }




        isMatch = 0;
        for(i=0; bOnce && i<nOrderBy; i++){
          if( MASKBIT(i) & obSat ) continue;
          pOBExpr = sqlite3ExprSkipCollate(pOrderBy->a[i].pExpr);
          testcase( wctrlFlags & WHERE_GROUPBY );
          testcase( wctrlFlags & WHERE_DISTINCTBY );
          if( (wctrlFlags & (WHERE_GROUPBY|WHERE_DISTINCTBY))==0 ) bOnce = 0;
          if( iColumn>=(-1) ){
            if( pOBExpr->op!=TK_COLUMN ) continue;
            if( pOBExpr->iTable!=iCur ) continue;
            if( pOBExpr->iColumn!=iColumn ) continue;
          }else{
            if( sqlite3ExprCompare(pOBExpr,pIndex->aColExpr->a[j].pExpr,iCur) ){
              continue;
            }
          }
          if( iColumn>=0 ){
            pColl = sqlite3ExprCollSeq(pWInfo->pParse, pOrderBy->a[i].pExpr);
            if( !pColl ) pColl = db->pDfltColl;
            if( sqlite3StrICmp(pColl->zName, pIndex->azColl[j])!=0 ) continue;
          }
          pLoop->u.btree.nIdxCol = j+1;
          isMatch = 1;
          break;
        }
        if( isMatch && (wctrlFlags & WHERE_GROUPBY)==0 ){


          if( revSet ){
            if( (rev ^ revIdx)!=pOrderBy->a[i].sortOrder ) isMatch = 0;
          }else{
            rev = revIdx ^ pOrderBy->a[i].sortOrder;
            if( rev ) *pRevMask |= MASKBIT(iLoop);
            revSet = 1;
          }
        }
        if( isMatch ){
          if( iColumn==XN_ROWID ){
            testcase( distinctColumns==0 );
            distinctColumns = 1;
          }
          obSat |= MASKBIT(i);
        }else{

          if( j==0 || j<nKeyCol ){
            testcase( isOrderDistinct!=0 );
            isOrderDistinct = 0;
          }
          break;
        }
      }
      if( distinctColumns ){
        testcase( isOrderDistinct==0 );
        isOrderDistinct = 1;
      }
    }


    if( isOrderDistinct ){
      orderDistinctMask |= pLoop->maskSelf;
      for(i=0; i<nOrderBy; i++){
        Expr *p;
        Bitmask mTerm;
        if( MASKBIT(i) & obSat ) continue;
        p = pOrderBy->a[i].pExpr;
        mTerm = sqlite3WhereExprUsage(&pWInfo->sMaskSet,p);
        if( mTerm==0 && !sqlite3ExprIsConstant(p) ) continue;
        if( (mTerm&~orderDistinctMask)==0 ){
          obSat |= MASKBIT(i);
        }
      }
    }
  }
  if( obSat==obDone ) return (i8)nOrderBy;
  if( !isOrderDistinct ){
    for(i=nOrderBy-1; i>0; i--){
      Bitmask m = MASKBIT(i) - 1;
      if( (obSat&m)==m ) return i;
    }
    return 0;
  }
  return -1;
}
