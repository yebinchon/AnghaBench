
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nTempReg; int nColCache; TYPE_1__* aColCache; int * aTempReg; } ;
struct TYPE_4__ {int iReg; scalar_t__ tempReg; } ;
typedef TYPE_2__ Parse ;


 scalar_t__ ArraySize (int *) ;

__attribute__((used)) static void cacheEntryClear(Parse *pParse, int i){
  if( pParse->aColCache[i].tempReg ){
    if( pParse->nTempReg<ArraySize(pParse->aTempReg) ){
      pParse->aTempReg[pParse->nTempReg++] = pParse->aColCache[i].iReg;
    }
  }
  pParse->nColCache--;
  if( i<pParse->nColCache ){
    pParse->aColCache[i] = pParse->aColCache[pParse->nColCache];
  }
}
