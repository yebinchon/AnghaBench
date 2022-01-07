
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_22__ {int wtFlags; int eOperator; TYPE_3__* pExpr; } ;
typedef TYPE_4__ WhereTerm ;
struct TYPE_19__ {TYPE_7__* pIdx; } ;
struct TYPE_20__ {int nEq; int wsFlags; TYPE_1__ u; } ;
struct TYPE_23__ {int iTabCur; int addrBrk; TYPE_2__ plan; } ;
typedef TYPE_5__ WhereLevel ;
typedef int WhereClause ;
typedef int Vdbe ;
struct TYPE_25__ {int nColumn; int* aiColumn; } ;
struct TYPE_24__ {int nMem; TYPE_10__* db; int * pVdbe; } ;
struct TYPE_21__ {int * pRight; } ;
struct TYPE_18__ {int mallocFailed; } ;
typedef TYPE_6__ Parse ;
typedef TYPE_7__ Index ;
typedef int Expr ;
typedef int Bitmask ;


 int OP_SCopy ;
 char SQLITE_AFF_NONE ;
 int TERM_CODED ;
 int TERM_VIRTUAL ;
 int WHERE_INDEXED ;
 int WO_IN ;
 int WO_ISNULL ;
 int assert (int) ;
 int codeEqualityTerm (TYPE_6__*,TYPE_4__*,TYPE_5__*,int,int) ;
 TYPE_4__* findTerm (int *,int,int,int ,int,TYPE_7__*) ;
 char sqlite3CompareAffinity (int *,char) ;
 char* sqlite3DbStrDup (TYPE_10__*,int ) ;
 int sqlite3ExprCodeIsNullJump (int *,int *,int,int ) ;
 scalar_t__ sqlite3ExprNeedsNoAffinityChange (int *,char) ;
 int sqlite3IndexAffinityStr (int *,TYPE_7__*) ;
 int sqlite3ReleaseTempReg (TYPE_6__*,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int testcase (int) ;

__attribute__((used)) static int codeAllEqualityTerms(
  Parse *pParse,
  WhereLevel *pLevel,
  WhereClause *pWC,
  Bitmask notReady,
  int nExtraReg,
  char **pzAff
){
  int nEq = pLevel->plan.nEq;
  Vdbe *v = pParse->pVdbe;
  Index *pIdx;
  int iCur = pLevel->iTabCur;
  WhereTerm *pTerm;
  int j;
  int regBase;
  int nReg;
  char *zAff;


  assert( pLevel->plan.wsFlags & WHERE_INDEXED );
  pIdx = pLevel->plan.u.pIdx;



  regBase = pParse->nMem + 1;
  nReg = pLevel->plan.nEq + nExtraReg;
  pParse->nMem += nReg;

  zAff = sqlite3DbStrDup(pParse->db, sqlite3IndexAffinityStr(v, pIdx));
  if( !zAff ){
    pParse->db->mallocFailed = 1;
  }



  assert( pIdx->nColumn>=nEq );
  for(j=0; j<nEq; j++){
    int r1;
    int k = pIdx->aiColumn[j];
    pTerm = findTerm(pWC, iCur, k, notReady, pLevel->plan.wsFlags, pIdx);
    if( pTerm==0 ) break;


    testcase( (pTerm->wtFlags & TERM_CODED)!=0 );
    testcase( pTerm->wtFlags & TERM_VIRTUAL );
    r1 = codeEqualityTerm(pParse, pTerm, pLevel, j, regBase+j);
    if( r1!=regBase+j ){
      if( nReg==1 ){
        sqlite3ReleaseTempReg(pParse, regBase);
        regBase = r1;
      }else{
        sqlite3VdbeAddOp2(v, OP_SCopy, r1, regBase+j);
      }
    }
    testcase( pTerm->eOperator & WO_ISNULL );
    testcase( pTerm->eOperator & WO_IN );
    if( (pTerm->eOperator & (WO_ISNULL|WO_IN))==0 ){
      Expr *pRight = pTerm->pExpr->pRight;
      sqlite3ExprCodeIsNullJump(v, pRight, regBase+j, pLevel->addrBrk);
      if( zAff ){
        if( sqlite3CompareAffinity(pRight, zAff[j])==SQLITE_AFF_NONE ){
          zAff[j] = SQLITE_AFF_NONE;
        }
        if( sqlite3ExprNeedsNoAffinityChange(pRight, zAff[j]) ){
          zAff[j] = SQLITE_AFF_NONE;
        }
      }
    }
  }
  *pzAff = zAff;
  return regBase;
}
