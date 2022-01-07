
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int i64 ;
struct TYPE_4__ {int i; } ;
struct TYPE_5__ {int flags; double r; TYPE_1__ u; int n; int z; int enc; } ;
typedef TYPE_2__ Mem ;


 int MEM_Int ;
 int MEM_Real ;
 int MEM_Str ;
 scalar_t__ sqlite3AtoF (int ,double*,int ,int ) ;
 scalar_t__ sqlite3Atoi64 (int ,int *,int ,int ) ;

__attribute__((used)) static void applyNumericAffinity(Mem *pRec){
  if( (pRec->flags & (MEM_Real|MEM_Int))==0 ){
    double rValue;
    i64 iValue;
    u8 enc = pRec->enc;
    if( (pRec->flags&MEM_Str)==0 ) return;
    if( sqlite3AtoF(pRec->z, &rValue, pRec->n, enc)==0 ) return;
    if( 0==sqlite3Atoi64(pRec->z, &iValue, pRec->n, enc) ){
      pRec->u.i = iValue;
      pRec->flags |= MEM_Int;
    }else{
      pRec->r = rValue;
      pRec->flags |= MEM_Real;
    }
  }
}
