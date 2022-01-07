
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_24__ {scalar_t__ mallocFailed; } ;
typedef TYPE_2__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_23__ {char* zToken; } ;
struct TYPE_28__ {scalar_t__ op; TYPE_1__ u; } ;
struct TYPE_27__ {int nArg; } ;
struct TYPE_26__ {TYPE_3__* pParse; } ;
struct TYPE_25__ {int nErr; TYPE_2__* db; } ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ NameContext ;
typedef TYPE_5__ FuncDef ;
typedef TYPE_6__ Expr ;


 int OP_Expire ;
 int OP_Function ;
 int P4_FUNCDEF ;
 int SQLITE_ATTACH ;
 int SQLITE_OK ;
 scalar_t__ TK_STRING ;
 int assert (int) ;
 int memset (TYPE_4__*,int ,int) ;
 int resolveAttachExpr (TYPE_4__*,TYPE_6__*) ;
 int sqlite3AuthCheck (TYPE_3__*,int,char*,int ,int ) ;
 int sqlite3ExprCode (TYPE_3__*,TYPE_6__*,int) ;
 int sqlite3ExprDelete (TYPE_2__*,TYPE_6__*) ;
 int sqlite3GetTempRange (TYPE_3__*,int) ;
 int * sqlite3GetVdbe (TYPE_3__*) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int ,int,int) ;
 int sqlite3VdbeChangeP4 (int *,int,char*,int ) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;

__attribute__((used)) static void codeAttach(
  Parse *pParse,
  int type,
  FuncDef const *pFunc,
  Expr *pAuthArg,
  Expr *pFilename,
  Expr *pDbname,
  Expr *pKey
){
  int rc;
  NameContext sName;
  Vdbe *v;
  sqlite3* db = pParse->db;
  int regArgs;

  memset(&sName, 0, sizeof(NameContext));
  sName.pParse = pParse;

  if(
      SQLITE_OK!=(rc = resolveAttachExpr(&sName, pFilename)) ||
      SQLITE_OK!=(rc = resolveAttachExpr(&sName, pDbname)) ||
      SQLITE_OK!=(rc = resolveAttachExpr(&sName, pKey))
  ){
    pParse->nErr++;
    goto attach_end;
  }


  if( pAuthArg ){
    char *zAuthArg;
    if( pAuthArg->op==TK_STRING ){
      zAuthArg = pAuthArg->u.zToken;
    }else{
      zAuthArg = 0;
    }
    rc = sqlite3AuthCheck(pParse, type, zAuthArg, 0, 0);
    if(rc!=SQLITE_OK ){
      goto attach_end;
    }
  }



  v = sqlite3GetVdbe(pParse);
  regArgs = sqlite3GetTempRange(pParse, 4);
  sqlite3ExprCode(pParse, pFilename, regArgs);
  sqlite3ExprCode(pParse, pDbname, regArgs+1);
  sqlite3ExprCode(pParse, pKey, regArgs+2);

  assert( v || db->mallocFailed );
  if( v ){
    sqlite3VdbeAddOp3(v, OP_Function, 0, regArgs+3-pFunc->nArg, regArgs+3);
    assert( pFunc->nArg==-1 || (pFunc->nArg&0xff)==pFunc->nArg );
    sqlite3VdbeChangeP5(v, (u8)(pFunc->nArg));
    sqlite3VdbeChangeP4(v, -1, (char *)pFunc, P4_FUNCDEF);





    sqlite3VdbeAddOp1(v, OP_Expire, (type==SQLITE_ATTACH));
  }

attach_end:
  sqlite3ExprDelete(db, pFilename);
  sqlite3ExprDelete(db, pDbname);
  sqlite3ExprDelete(db, pKey);
}
