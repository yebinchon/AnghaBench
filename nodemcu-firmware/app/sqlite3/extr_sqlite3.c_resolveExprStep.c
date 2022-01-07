
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_9__ ;
typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;
typedef struct TYPE_37__ TYPE_19__ ;
typedef struct TYPE_36__ TYPE_12__ ;
typedef struct TYPE_35__ TYPE_11__ ;
typedef struct TYPE_34__ TYPE_10__ ;


typedef int u8 ;
struct SrcList_item {scalar_t__ iCursor; int pTab; } ;
struct TYPE_42__ {TYPE_9__* pNC; } ;
struct TYPE_43__ {TYPE_8__* pParse; TYPE_5__ u; } ;
typedef TYPE_6__ Walker ;
struct TYPE_46__ {int ncFlags; int nRef; struct TYPE_46__* pNext; TYPE_7__* pSrcList; int nErr; TYPE_8__* pParse; } ;
struct TYPE_45__ {scalar_t__ nTab; TYPE_19__* db; scalar_t__ nErr; int explain; } ;
struct TYPE_44__ {scalar_t__ nAlloc; int nSrc; struct SrcList_item* a; } ;
struct TYPE_41__ {TYPE_11__* pList; int pSelect; } ;
struct TYPE_40__ {TYPE_12__* pExpr; } ;
struct TYPE_39__ {int busy; } ;
struct TYPE_38__ {char* zToken; } ;
struct TYPE_37__ {scalar_t__ mallocFailed; TYPE_2__ init; } ;
struct TYPE_36__ {int op; int iTable; int iColumn; struct TYPE_36__* pRight; TYPE_4__ x; struct TYPE_36__* pLeft; int op2; TYPE_1__ u; int affinity; int pTab; } ;
struct TYPE_35__ {int nExpr; TYPE_3__* a; } ;
struct TYPE_34__ {int funcFlags; unsigned char* zName; int xFinalize; } ;
typedef TYPE_7__ SrcList ;
typedef TYPE_8__ Parse ;
typedef TYPE_9__ NameContext ;
typedef TYPE_10__ FuncDef ;
typedef TYPE_11__ ExprList ;
typedef TYPE_12__ Expr ;


 int ENC (TYPE_19__*) ;
 int EP_ConstFunc ;
 int EP_Resolved ;
 int EP_Skip ;
 int EP_Unlikely ;
 int EP_VarSelect ;
 int EP_xIsSelect ;
 scalar_t__ ExprHasProperty (TYPE_12__*,int) ;
 int ExprSetProperty (TYPE_12__*,int) ;
 int NC_AllowAgg ;
 int NC_HasAgg ;
 int NC_IdxExpr ;
 int NC_IsCheck ;
 int NC_MinMaxAgg ;
 int NC_PartIdx ;
 int NC_VarSelect ;
 int SQLITE_AFF_INTEGER ;
 int SQLITE_DENY ;
 int SQLITE_FUNCTION ;
 int SQLITE_FUNC_CONSTANT ;
 int SQLITE_FUNC_MINMAX ;
 int SQLITE_FUNC_SLOCHNG ;
 int SQLITE_FUNC_UNLIKELY ;
 int SQLITE_OK ;
 int const TK_AGG_FUNCTION ;

 int TK_COLUMN ;
 int const TK_NULL ;



 int WRC_Abort ;
 int WRC_Continue ;
 int WRC_Prune ;
 int assert (int) ;
 int exprProbability (TYPE_12__*) ;
 int lookupName (TYPE_8__*,char const*,char const*,char const*,TYPE_9__*,TYPE_12__*) ;
 int notValid (TYPE_8__*,TYPE_9__*,char*,int) ;
 int sqlite3AuthCheck (TYPE_8__*,int ,int ,unsigned char*,int ) ;
 int sqlite3ErrorMsg (TYPE_8__*,char*,...) ;
 int sqlite3ExprVectorSize (TYPE_12__*) ;
 TYPE_10__* sqlite3FindFunction (TYPE_19__*,char const*,int,int ,int ) ;
 int sqlite3FunctionUsesThisSrc (TYPE_12__*,TYPE_7__*) ;
 int sqlite3Strlen30 (char const*) ;
 int sqlite3WalkExprList (TYPE_6__*,TYPE_11__*) ;
 int sqlite3WalkSelect (TYPE_6__*,int ) ;
 int testcase (int) ;

__attribute__((used)) static int resolveExprStep(Walker *pWalker, Expr *pExpr){
  NameContext *pNC;
  Parse *pParse;

  pNC = pWalker->u.pNC;
  assert( pNC!=0 );
  pParse = pNC->pParse;
  assert( pParse==pWalker->pParse );

  if( ExprHasProperty(pExpr, EP_Resolved) ) return WRC_Prune;
  ExprSetProperty(pExpr, EP_Resolved);

  if( pNC->pSrcList && pNC->pSrcList->nAlloc>0 ){
    SrcList *pSrcList = pNC->pSrcList;
    int i;
    for(i=0; i<pNC->pSrcList->nSrc; i++){
      assert( pSrcList->a[i].iCursor>=0 && pSrcList->a[i].iCursor<pParse->nTab);
    }
  }

  switch( pExpr->op ){
    case 137:
    case 143: {
      const char *zColumn;
      const char *zTable;
      const char *zDb;
      Expr *pRight;

      if( pExpr->op==137 ){
        zDb = 0;
        zTable = 0;
        zColumn = pExpr->u.zToken;
      }else{
        notValid(pParse, pNC, "the \".\" operator", NC_IdxExpr);
        pRight = pExpr->pRight;
        if( pRight->op==137 ){
          zDb = 0;
          zTable = pExpr->pLeft->u.zToken;
          zColumn = pRight->u.zToken;
        }else{
          assert( pRight->op==143 );
          zDb = pExpr->pLeft->u.zToken;
          zTable = pRight->pLeft->u.zToken;
          zColumn = pRight->pRight->u.zToken;
        }
      }
      return lookupName(pParse, zDb, zTable, zColumn, pNC, pExpr);
    }



    case 140: {
      ExprList *pList = pExpr->x.pList;
      int n = pList ? pList->nExpr : 0;
      int no_such_func = 0;
      int wrong_num_args = 0;
      int is_agg = 0;
      int nId;
      const char *zId;
      FuncDef *pDef;
      u8 enc = ENC(pParse->db);

      assert( !ExprHasProperty(pExpr, EP_xIsSelect) );
      zId = pExpr->u.zToken;
      nId = sqlite3Strlen30(zId);
      pDef = sqlite3FindFunction(pParse->db, zId, n, enc, 0);
      if( pDef==0 ){
        pDef = sqlite3FindFunction(pParse->db, zId, -2, enc, 0);
        if( pDef==0 ){
          no_such_func = 1;
        }else{
          wrong_num_args = 1;
        }
      }else{
        is_agg = pDef->xFinalize!=0;
        if( pDef->funcFlags & SQLITE_FUNC_UNLIKELY ){
          ExprSetProperty(pExpr, EP_Unlikely|EP_Skip);
          if( n==2 ){
            pExpr->iTable = exprProbability(pList->a[1].pExpr);
            if( pExpr->iTable<0 ){
              sqlite3ErrorMsg(pParse,
                "second argument to likelihood() must be a "
                "constant between 0.0 and 1.0");
              pNC->nErr++;
            }
          }else{
            pExpr->iTable = pDef->zName[0]=='u' ? 8388608 : 125829120;
          }
        }

        {
          int auth = sqlite3AuthCheck(pParse, SQLITE_FUNCTION, 0,pDef->zName,0);
          if( auth!=SQLITE_OK ){
            if( auth==SQLITE_DENY ){
              sqlite3ErrorMsg(pParse, "not authorized to use function: %s",
                                      pDef->zName);
              pNC->nErr++;
            }
            pExpr->op = TK_NULL;
            return WRC_Prune;
          }
        }

        if( pDef->funcFlags & (SQLITE_FUNC_CONSTANT|SQLITE_FUNC_SLOCHNG) ){



          ExprSetProperty(pExpr,EP_ConstFunc);
        }
        if( (pDef->funcFlags & SQLITE_FUNC_CONSTANT)==0 ){



          notValid(pParse, pNC, "non-deterministic functions",
                   NC_IdxExpr|NC_PartIdx);
        }
      }
      if( is_agg && (pNC->ncFlags & NC_AllowAgg)==0 ){
        sqlite3ErrorMsg(pParse, "misuse of aggregate function %.*s()", nId,zId);
        pNC->nErr++;
        is_agg = 0;
      }else if( no_such_func && pParse->db->init.busy==0



      ){
        sqlite3ErrorMsg(pParse, "no such function: %.*s", nId, zId);
        pNC->nErr++;
      }else if( wrong_num_args ){
        sqlite3ErrorMsg(pParse,"wrong number of arguments to function %.*s()",
             nId, zId);
        pNC->nErr++;
      }
      if( is_agg ) pNC->ncFlags &= ~NC_AllowAgg;
      sqlite3WalkExprList(pWalker, pList);
      if( is_agg ){
        NameContext *pNC2 = pNC;
        pExpr->op = TK_AGG_FUNCTION;
        pExpr->op2 = 0;
        while( pNC2 && !sqlite3FunctionUsesThisSrc(pExpr, pNC2->pSrcList) ){
          pExpr->op2++;
          pNC2 = pNC2->pNext;
        }
        assert( pDef!=0 );
        if( pNC2 ){
          assert( SQLITE_FUNC_MINMAX==NC_MinMaxAgg );
          testcase( (pDef->funcFlags & SQLITE_FUNC_MINMAX)!=0 );
          pNC2->ncFlags |= NC_HasAgg | (pDef->funcFlags & SQLITE_FUNC_MINMAX);

        }
        pNC->ncFlags |= NC_AllowAgg;
      }



      return WRC_Prune;
    }

    case 129:
    case 141: testcase( pExpr->op==141 );

    case 136: {
      testcase( pExpr->op==136 );
      if( ExprHasProperty(pExpr, EP_xIsSelect) ){
        int nRef = pNC->nRef;
        notValid(pParse, pNC, "subqueries", NC_IsCheck|NC_PartIdx|NC_IdxExpr);
        sqlite3WalkSelect(pWalker, pExpr->x.pSelect);
        assert( pNC->nRef>=nRef );
        if( nRef!=pNC->nRef ){
          ExprSetProperty(pExpr, EP_VarSelect);
          pNC->ncFlags |= NC_VarSelect;
        }
      }
      break;
    }
    case 128: {
      notValid(pParse, pNC, "parameters", NC_IsCheck|NC_PartIdx|NC_IdxExpr);
      break;
    }
    case 144:
    case 142:
    case 131:
    case 132:
    case 133:
    case 138:
    case 139:
    case 135:
    case 134: {
      int nLeft, nRight;
      if( pParse->db->mallocFailed ) break;
      assert( pExpr->pLeft!=0 );
      nLeft = sqlite3ExprVectorSize(pExpr->pLeft);
      if( pExpr->op==144 ){
        nRight = sqlite3ExprVectorSize(pExpr->x.pList->a[0].pExpr);
        if( nRight==nLeft ){
          nRight = sqlite3ExprVectorSize(pExpr->x.pList->a[1].pExpr);
        }
      }else{
        assert( pExpr->pRight!=0 );
        nRight = sqlite3ExprVectorSize(pExpr->pRight);
      }
      if( nLeft!=nRight ){
        testcase( pExpr->op==142 );
        testcase( pExpr->op==131 );
        testcase( pExpr->op==132 );
        testcase( pExpr->op==133 );
        testcase( pExpr->op==138 );
        testcase( pExpr->op==139 );
        testcase( pExpr->op==135 );
        testcase( pExpr->op==134 );
        testcase( pExpr->op==144 );
        sqlite3ErrorMsg(pParse, "row value misused");
      }
      break;
    }
  }
  return (pParse->nErr || pParse->db->mallocFailed) ? WRC_Abort : WRC_Continue;
}
