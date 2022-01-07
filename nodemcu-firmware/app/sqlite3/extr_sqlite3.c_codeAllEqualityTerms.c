
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int u16 ;
struct TYPE_23__ {int wtFlags; int eOperator; TYPE_3__* pExpr; } ;
typedef TYPE_4__ WhereTerm ;
struct TYPE_20__ {int nEq; TYPE_8__* pIndex; } ;
struct TYPE_21__ {TYPE_1__ btree; } ;
struct TYPE_24__ {int wsFlags; int nSkip; TYPE_4__** aLTerm; TYPE_2__ u; } ;
typedef TYPE_5__ WhereLoop ;
struct TYPE_25__ {int iIdxCur; int addrBrk; int addrSkip; TYPE_5__* pWLoop; } ;
typedef TYPE_6__ WhereLevel ;
typedef int Vdbe ;
struct TYPE_27__ {scalar_t__* aiColumn; int zName; } ;
struct TYPE_26__ {int nMem; TYPE_10__* db; int * pVdbe; } ;
struct TYPE_22__ {int flags; int * pRight; } ;
struct TYPE_19__ {scalar_t__ mallocFailed; } ;
typedef TYPE_7__ Parse ;
typedef TYPE_8__ Index ;
typedef int Expr ;


 int EP_xIsSelect ;
 int OP_Column ;
 int OP_Goto ;
 int OP_IsNull ;
 int OP_Last ;
 int OP_Rewind ;
 int OP_SCopy ;
 int OP_SeekGT ;
 int OP_SeekLT ;
 char SQLITE_AFF_BLOB ;
 int TERM_CODED ;
 int TERM_IS ;
 int TERM_VIRTUAL ;
 int VdbeComment (int *) ;
 int VdbeCoverage (int *) ;
 int VdbeCoverageIf (int *,int) ;
 int WHERE_VIRTUALTABLE ;
 int WO_IN ;
 int WO_ISNULL ;
 scalar_t__ XN_EXPR ;
 int assert (int) ;
 int codeEqualityTerm (TYPE_7__*,TYPE_4__*,TYPE_6__*,int,int,int) ;
 int explainIndexColumnName (TYPE_8__*,int) ;
 char sqlite3CompareAffinity (int *,char) ;
 char* sqlite3DbStrDup (TYPE_10__*,int ) ;
 scalar_t__ sqlite3ExprCanBeNull (int *) ;
 scalar_t__ sqlite3ExprNeedsNoAffinityChange (int *,char) ;
 int sqlite3IndexAffinityStr (TYPE_10__*,TYPE_8__*) ;
 int sqlite3ReleaseTempReg (TYPE_7__*,int) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,int ,int,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 scalar_t__ strlen (char*) ;
 int testcase (int) ;

__attribute__((used)) static int codeAllEqualityTerms(
  Parse *pParse,
  WhereLevel *pLevel,
  int bRev,
  int nExtraReg,
  char **pzAff
){
  u16 nEq;
  u16 nSkip;
  Vdbe *v = pParse->pVdbe;
  Index *pIdx;
  WhereTerm *pTerm;
  WhereLoop *pLoop;
  int j;
  int regBase;
  int nReg;
  char *zAff;


  pLoop = pLevel->pWLoop;
  assert( (pLoop->wsFlags & WHERE_VIRTUALTABLE)==0 );
  nEq = pLoop->u.btree.nEq;
  nSkip = pLoop->nSkip;
  pIdx = pLoop->u.btree.pIndex;
  assert( pIdx!=0 );



  regBase = pParse->nMem + 1;
  nReg = pLoop->u.btree.nEq + nExtraReg;
  pParse->nMem += nReg;

  zAff = sqlite3DbStrDup(pParse->db,sqlite3IndexAffinityStr(pParse->db,pIdx));
  assert( zAff!=0 || pParse->db->mallocFailed );

  if( nSkip ){
    int iIdxCur = pLevel->iIdxCur;
    sqlite3VdbeAddOp1(v, (bRev?OP_Last:OP_Rewind), iIdxCur);
    VdbeCoverageIf(v, bRev==0);
    VdbeCoverageIf(v, bRev!=0);
    VdbeComment((v, "begin skip-scan on %s", pIdx->zName));
    j = sqlite3VdbeAddOp0(v, OP_Goto);
    pLevel->addrSkip = sqlite3VdbeAddOp4Int(v, (bRev?OP_SeekLT:OP_SeekGT),
                            iIdxCur, 0, regBase, nSkip);
    VdbeCoverageIf(v, bRev==0);
    VdbeCoverageIf(v, bRev!=0);
    sqlite3VdbeJumpHere(v, j);
    for(j=0; j<nSkip; j++){
      sqlite3VdbeAddOp3(v, OP_Column, iIdxCur, j, regBase+j);
      testcase( pIdx->aiColumn[j]==XN_EXPR );
      VdbeComment((v, "%s", explainIndexColumnName(pIdx, j)));
    }
  }



  assert( zAff==0 || (int)strlen(zAff)>=nEq );
  for(j=nSkip; j<nEq; j++){
    int r1;
    pTerm = pLoop->aLTerm[j];
    assert( pTerm!=0 );


    testcase( (pTerm->wtFlags & TERM_CODED)!=0 );
    testcase( pTerm->wtFlags & TERM_VIRTUAL );
    r1 = codeEqualityTerm(pParse, pTerm, pLevel, j, bRev, regBase+j);
    if( r1!=regBase+j ){
      if( nReg==1 ){
        sqlite3ReleaseTempReg(pParse, regBase);
        regBase = r1;
      }else{
        sqlite3VdbeAddOp2(v, OP_SCopy, r1, regBase+j);
      }
    }
    if( pTerm->eOperator & WO_IN ){
      if( pTerm->pExpr->flags & EP_xIsSelect ){




        if( zAff ) zAff[j] = SQLITE_AFF_BLOB;
      }
    }else if( (pTerm->eOperator & WO_ISNULL)==0 ){
      Expr *pRight = pTerm->pExpr->pRight;
      if( (pTerm->wtFlags & TERM_IS)==0 && sqlite3ExprCanBeNull(pRight) ){
        sqlite3VdbeAddOp2(v, OP_IsNull, regBase+j, pLevel->addrBrk);
        VdbeCoverage(v);
      }
      if( zAff ){
        if( sqlite3CompareAffinity(pRight, zAff[j])==SQLITE_AFF_BLOB ){
          zAff[j] = SQLITE_AFF_BLOB;
        }
        if( sqlite3ExprNeedsNoAffinityChange(pRight, zAff[j]) ){
          zAff[j] = SQLITE_AFF_BLOB;
        }
      }
    }
  }
  *pzAff = zAff;
  return regBase;
}
