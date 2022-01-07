
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_5__ {int p; } ;
struct TYPE_6__ {int zComment; TYPE_1__ p4; scalar_t__ p4type; } ;
typedef TYPE_2__ Op ;


 int freeP4 (int *,scalar_t__,int ) ;
 int sqlite3DbFree (int *,int ) ;
 int sqlite3DbFreeNN (int *,TYPE_2__*) ;

__attribute__((used)) static void vdbeFreeOpArray(sqlite3 *db, Op *aOp, int nOp){
  if( aOp ){
    Op *pOp;
    for(pOp=&aOp[nOp-1]; pOp>=aOp; pOp--){
      if( pOp->p4type ) freeP4(db, pOp->p4type, pOp->p4.p);



    }
    sqlite3DbFreeNN(db, aOp);
  }
}
