
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nTree; int* aTree; int * aReadr; scalar_t__ pTask; } ;
typedef int PmaReader ;
typedef TYPE_1__ MergeEngine ;


 int SORTER_MAX_MERGE_COUNT ;
 int assert (int) ;
 scalar_t__ sqlite3FaultSim (int) ;
 scalar_t__ sqlite3MallocZero (int) ;

__attribute__((used)) static MergeEngine *vdbeMergeEngineNew(int nReader){
  int N = 2;
  int nByte;
  MergeEngine *pNew;

  assert( nReader<=SORTER_MAX_MERGE_COUNT );

  while( N<nReader ) N += N;
  nByte = sizeof(MergeEngine) + N * (sizeof(int) + sizeof(PmaReader));

  pNew = sqlite3FaultSim(100) ? 0 : (MergeEngine*)sqlite3MallocZero(nByte);
  if( pNew ){
    pNew->nTree = N;
    pNew->pTask = 0;
    pNew->aReadr = (PmaReader*)&pNew[1];
    pNew->aTree = (int*)&pNew->aReadr[N];
  }
  return pNew;
}
