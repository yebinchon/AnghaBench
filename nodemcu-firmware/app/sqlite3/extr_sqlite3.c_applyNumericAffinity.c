
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int i64 ;
struct TYPE_5__ {double r; int i; } ;
struct TYPE_6__ {int flags; TYPE_1__ u; int n; int z; int enc; } ;
typedef TYPE_2__ Mem ;


 int MEM_Int ;
 int MEM_Real ;
 int MEM_Str ;
 int assert (int) ;
 scalar_t__ sqlite3AtoF (int ,double*,int ,int ) ;
 scalar_t__ sqlite3Atoi64 (int ,int *,int ,int ) ;
 int sqlite3VdbeIntegerAffinity (TYPE_2__*) ;

__attribute__((used)) static void applyNumericAffinity(Mem *pRec, int bTryForInt){
  double rValue;
  i64 iValue;
  u8 enc = pRec->enc;
  assert( (pRec->flags & (MEM_Str|MEM_Int|MEM_Real))==MEM_Str );
  if( sqlite3AtoF(pRec->z, &rValue, pRec->n, enc)==0 ) return;
  if( 0==sqlite3Atoi64(pRec->z, &iValue, pRec->n, enc) ){
    pRec->u.i = iValue;
    pRec->flags |= MEM_Int;
  }else{
    pRec->u.r = rValue;
    pRec->flags |= MEM_Real;
    if( bTryForInt ) sqlite3VdbeIntegerAffinity(pRec);
  }
}
