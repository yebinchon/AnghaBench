
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* pNext; } ;
struct TYPE_5__ {TYPE_2__* pFirst; } ;
typedef TYPE_1__ MemJournal ;
typedef TYPE_2__ FileChunk ;


 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static void memjrnlFreeChunks(MemJournal *p){
  FileChunk *pIter;
  FileChunk *pNext;
  for(pIter=p->pFirst; pIter; pIter=pNext){
    pNext = pIter->pNext;
    sqlite3_free(pIter);
  }
  p->pFirst = 0;
}
