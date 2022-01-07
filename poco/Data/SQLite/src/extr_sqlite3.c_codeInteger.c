
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int i64 ;
typedef int Vdbe ;
struct TYPE_7__ {int iValue; char* zToken; } ;
struct TYPE_9__ {int flags; TYPE_1__ u; } ;
struct TYPE_8__ {int * pVdbe; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Expr ;


 int EP_IntValue ;
 int OP_Int64 ;
 int OP_Integer ;
 int P4_INT64 ;
 int SMALLEST_INT64 ;
 int assert (int) ;
 int codeReal (int *,char const*,int,int) ;
 int sqlite3DecOrHexToI64 (char const*,int *) ;
 int sqlite3ErrorMsg (TYPE_2__*,char*,char*,char const*) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp4Dup8 (int *,int ,int ,int,int ,int *,int ) ;
 scalar_t__ sqlite3_strnicmp (char const*,char*,int) ;

__attribute__((used)) static void codeInteger(Parse *pParse, Expr *pExpr, int negFlag, int iMem){
  Vdbe *v = pParse->pVdbe;
  if( pExpr->flags & EP_IntValue ){
    int i = pExpr->u.iValue;
    assert( i>=0 );
    if( negFlag ) i = -i;
    sqlite3VdbeAddOp2(v, OP_Integer, i, iMem);
  }else{
    int c;
    i64 value;
    const char *z = pExpr->u.zToken;
    assert( z!=0 );
    c = sqlite3DecOrHexToI64(z, &value);
    if( (c==3 && !negFlag) || (c==2) || (negFlag && value==SMALLEST_INT64)){




      if( sqlite3_strnicmp(z,"0x",2)==0 ){
        sqlite3ErrorMsg(pParse, "hex literal too big: %s%s", negFlag?"-":"",z);
      }else

      {
        codeReal(v, z, negFlag, iMem);
      }

    }else{
      if( negFlag ){ value = c==3 ? SMALLEST_INT64 : -value; }
      sqlite3VdbeAddOp4Dup8(v, OP_Int64, 0, iMem, 0, (u8*)&value, P4_INT64);
    }
  }
}
