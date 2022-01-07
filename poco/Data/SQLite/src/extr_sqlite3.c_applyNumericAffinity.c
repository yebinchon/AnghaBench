
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {double r; int i; } ;
struct TYPE_7__ {int flags; TYPE_1__ u; int n; int z; int enc; } ;
typedef TYPE_2__ Mem ;


 int MEM_Int ;
 int MEM_IntReal ;
 int MEM_Real ;
 int MEM_Str ;
 scalar_t__ alsoAnInt (TYPE_2__*,double,int *) ;
 int assert (int) ;
 int sqlite3AtoF (int ,double*,int ,int ) ;
 int sqlite3VdbeIntegerAffinity (TYPE_2__*) ;

__attribute__((used)) static void applyNumericAffinity(Mem *pRec, int bTryForInt){
  double rValue;
  u8 enc = pRec->enc;
  int rc;
  assert( (pRec->flags & (MEM_Str|MEM_Int|MEM_Real|MEM_IntReal))==MEM_Str );
  rc = sqlite3AtoF(pRec->z, &rValue, pRec->n, enc);
  if( rc<=0 ) return;
  if( rc==1 && alsoAnInt(pRec, rValue, &pRec->u.i) ){
    pRec->flags |= MEM_Int;
  }else{
    pRec->u.r = rValue;
    pRec->flags |= MEM_Real;
    if( bTryForInt ) sqlite3VdbeIntegerAffinity(pRec);
  }




  pRec->flags &= ~MEM_Str;
}
