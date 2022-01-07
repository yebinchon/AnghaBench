
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ iStartOff; int bEof; TYPE_1__* aFile; int pTask; scalar_t__ bUseThread; } ;
struct TYPE_6__ {scalar_t__ iEof; } ;
typedef TYPE_1__ SorterFile ;
typedef TYPE_2__ IncrMerger ;


 int SQLITE_OK ;
 int vdbeIncrBgPopulate (TYPE_2__*) ;
 int vdbeIncrPopulate (TYPE_2__*) ;
 int vdbeSorterJoinThread (int ) ;

__attribute__((used)) static int vdbeIncrSwap(IncrMerger *pIncr){
  int rc = SQLITE_OK;
  {
    rc = vdbeIncrPopulate(pIncr);
    pIncr->aFile[0] = pIncr->aFile[1];
    if( pIncr->aFile[0].iEof==pIncr->iStartOff ){
      pIncr->bEof = 1;
    }
  }

  return rc;
}
