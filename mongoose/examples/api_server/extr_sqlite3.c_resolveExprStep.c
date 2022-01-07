
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_9__ ;
typedef struct TYPE_44__ TYPE_8__ ;
typedef struct TYPE_43__ TYPE_7__ ;
typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_20__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_13__ ;
typedef struct TYPE_34__ TYPE_12__ ;
typedef struct TYPE_33__ TYPE_11__ ;
typedef struct TYPE_32__ TYPE_10__ ;


typedef int u8 ;
struct SrcList_item {scalar_t__ iCursor; int pTab; } ;
struct TYPE_38__ {TYPE_10__* pNC; } ;
struct TYPE_43__ {TYPE_9__* pParse; TYPE_2__ u; } ;
typedef TYPE_7__ Walker ;
struct TYPE_45__ {scalar_t__ nTab; TYPE_20__* db; scalar_t__ nErr; } ;
struct TYPE_44__ {scalar_t__ nAlloc; int nSrc; struct SrcList_item* a; } ;
struct TYPE_42__ {char const* zToken; } ;
struct TYPE_41__ {int pSelect; TYPE_12__* pList; } ;
struct TYPE_39__ {char* zToken; } ;
struct TYPE_40__ {TYPE_3__ u; } ;
struct TYPE_36__ {int busy; } ;
struct TYPE_37__ {scalar_t__ mallocFailed; TYPE_1__ init; } ;
struct TYPE_35__ {int op; scalar_t__ iTable; int iColumn; TYPE_5__ x; int op2; TYPE_6__ u; struct TYPE_35__* pRight; TYPE_4__* pLeft; int affinity; int pTab; } ;
struct TYPE_34__ {int nExpr; } ;
struct TYPE_33__ {int zName; int xFunc; } ;
struct TYPE_32__ {int ncFlags; int nRef; struct TYPE_32__* pNext; TYPE_8__* pSrcList; int nErr; TYPE_9__* pParse; } ;
typedef TYPE_8__ SrcList ;
typedef TYPE_9__ Parse ;
typedef TYPE_10__ NameContext ;
typedef TYPE_11__ FuncDef ;
typedef TYPE_12__ ExprList ;
typedef TYPE_13__ Expr ;


 int ENC (TYPE_20__*) ;
 int EP_Resolved ;
 int EP_VarSelect ;
 int EP_xIsSelect ;
 scalar_t__ ExprHasAnyProperty (TYPE_13__*,int ) ;
 int ExprHasProperty (TYPE_13__*,int ) ;
 int ExprSetProperty (TYPE_13__*,int ) ;
 int NC_AllowAgg ;
 int NC_HasAgg ;
 int NC_IsCheck ;
 int SQLITE_AFF_INTEGER ;
 int SQLITE_DENY ;
 int SQLITE_FUNCTION ;
 int SQLITE_OK ;
 int const TK_AGG_FUNCTION ;
 int TK_COLUMN ;






 int const TK_NULL ;



 int WRC_Abort ;
 int WRC_Continue ;
 int WRC_Prune ;
 int assert (int) ;
 int lookupName (TYPE_9__*,char const*,char const*,char const*,TYPE_10__*,TYPE_13__*) ;
 int sqlite3AuthCheck (TYPE_9__*,int ,int ,int ,int ) ;
 int sqlite3ErrorMsg (TYPE_9__*,char*,...) ;
 TYPE_11__* sqlite3FindFunction (TYPE_20__*,char const*,int,int,int ,int ) ;
 int sqlite3FunctionUsesThisSrc (TYPE_13__*,TYPE_8__*) ;
 int sqlite3Strlen30 (char const*) ;
 int sqlite3WalkExprList (TYPE_7__*,TYPE_12__*) ;
 int sqlite3WalkSelect (TYPE_7__*,int ) ;
 int testcase (int) ;

__attribute__((used)) static int resolveExprStep(Walker *pWalker, Expr *pExpr){
  NameContext *pNC;
  Parse *pParse;

  pNC = pWalker->u.pNC;
  assert( pNC!=0 );
  pParse = pNC->pParse;
  assert( pParse==pWalker->pParse );

  if( ExprHasAnyProperty(pExpr, EP_Resolved) ) return WRC_Prune;
  ExprSetProperty(pExpr, EP_Resolved);

  if( pNC->pSrcList && pNC->pSrcList->nAlloc>0 ){
    SrcList *pSrcList = pNC->pSrcList;
    int i;
    for(i=0; i<pNC->pSrcList->nSrc; i++){
      assert( pSrcList->a[i].iCursor>=0 && pSrcList->a[i].iCursor<pParse->nTab);
    }
  }

  switch( pExpr->op ){
    case 132: {
      return lookupName(pParse, 0, 0, pExpr->u.zToken, pNC, pExpr);
    }




    case 135: {
      const char *zColumn;
      const char *zTable;
      const char *zDb;
      Expr *pRight;


      pRight = pExpr->pRight;
      if( pRight->op==132 ){
        zDb = 0;
        zTable = pExpr->pLeft->u.zToken;
        zColumn = pRight->u.zToken;
      }else{
        assert( pRight->op==135 );
        zDb = pExpr->pLeft->u.zToken;
        zTable = pRight->pLeft->u.zToken;
        zColumn = pRight->pRight->u.zToken;
      }
      return lookupName(pParse, zDb, zTable, zColumn, pNC, pExpr);
    }



    case 136:
    case 133: {
      ExprList *pList = pExpr->x.pList;
      int n = pList ? pList->nExpr : 0;
      int no_such_func = 0;
      int wrong_num_args = 0;
      int is_agg = 0;
      int auth;
      int nId;
      const char *zId;
      FuncDef *pDef;
      u8 enc = ENC(pParse->db);

      testcase( pExpr->op==136 );
      assert( !ExprHasProperty(pExpr, EP_xIsSelect) );
      zId = pExpr->u.zToken;
      nId = sqlite3Strlen30(zId);
      pDef = sqlite3FindFunction(pParse->db, zId, nId, n, enc, 0);
      if( pDef==0 ){
        pDef = sqlite3FindFunction(pParse->db, zId, nId, -2, enc, 0);
        if( pDef==0 ){
          no_such_func = 1;
        }else{
          wrong_num_args = 1;
        }
      }else{
        is_agg = pDef->xFunc==0;
      }

      if( pDef ){
        auth = sqlite3AuthCheck(pParse, SQLITE_FUNCTION, 0, pDef->zName, 0);
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

      if( is_agg && (pNC->ncFlags & NC_AllowAgg)==0 ){
        sqlite3ErrorMsg(pParse, "misuse of aggregate function %.*s()", nId,zId);
        pNC->nErr++;
        is_agg = 0;
      }else if( no_such_func && pParse->db->init.busy==0 ){
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
        if( pNC2 ) pNC2->ncFlags |= NC_HasAgg;
        pNC->ncFlags |= NC_AllowAgg;
      }



      return WRC_Prune;
    }

    case 129:
    case 134: testcase( pExpr->op==134 );

    case 131: {
      testcase( pExpr->op==131 );
      if( ExprHasProperty(pExpr, EP_xIsSelect) ){
        int nRef = pNC->nRef;

        if( (pNC->ncFlags & NC_IsCheck)!=0 ){
          sqlite3ErrorMsg(pParse,"subqueries prohibited in CHECK constraints");
        }

        sqlite3WalkSelect(pWalker, pExpr->x.pSelect);
        assert( pNC->nRef>=nRef );
        if( nRef!=pNC->nRef ){
          ExprSetProperty(pExpr, EP_VarSelect);
        }
      }
      break;
    }

    case 128: {
      if( (pNC->ncFlags & NC_IsCheck)!=0 ){
        sqlite3ErrorMsg(pParse,"parameters prohibited in CHECK constraints");
      }
      break;
    }

  }
  return (pParse->nErr || pParse->db->mallocFailed) ? WRC_Abort : WRC_Continue;
}
