
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {size_t p2; } ;
typedef TYPE_1__ VdbeOp ;
struct TYPE_13__ {size_t nMem; size_t nCursor; TYPE_3__* aMem; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_14__ {int flags; } ;
typedef TYPE_3__ Mem ;


 int MEM_Int ;
 scalar_t__ VdbeMemDynamic (TYPE_3__*) ;
 int assert (int) ;
 int memAboutToChange (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* out2PrereleaseWithClear (TYPE_3__*) ;

__attribute__((used)) static Mem *out2Prerelease(Vdbe *p, VdbeOp *pOp){
  Mem *pOut;
  assert( pOp->p2>0 );
  assert( pOp->p2<=(p->nMem+1 - p->nCursor) );
  pOut = &p->aMem[pOp->p2];
  memAboutToChange(p, pOut);
  if( VdbeMemDynamic(pOut) ){
    return out2PrereleaseWithClear(pOut);
  }else{
    pOut->flags = MEM_Int;
    return pOut;
  }
}
