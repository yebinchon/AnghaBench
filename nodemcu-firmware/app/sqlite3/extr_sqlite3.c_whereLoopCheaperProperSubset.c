
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nLTerm; scalar_t__ nSkip; scalar_t__ rRun; scalar_t__ nOut; scalar_t__* aLTerm; } ;
typedef TYPE_1__ WhereLoop ;



__attribute__((used)) static int whereLoopCheaperProperSubset(
  const WhereLoop *pX,
  const WhereLoop *pY
){
  int i, j;
  if( pX->nLTerm-pX->nSkip >= pY->nLTerm-pY->nSkip ){
    return 0;
  }
  if( pY->nSkip > pX->nSkip ) return 0;
  if( pX->rRun >= pY->rRun ){
    if( pX->rRun > pY->rRun ) return 0;
    if( pX->nOut > pY->nOut ) return 0;
  }
  for(i=pX->nLTerm-1; i>=0; i--){
    if( pX->aLTerm[i]==0 ) continue;
    for(j=pY->nLTerm-1; j>=0; j--){
      if( pY->aLTerm[j]==pX->aLTerm[i] ) break;
    }
    if( j<0 ) return 0;
  }
  return 1;
}
