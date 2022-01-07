
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ exclusiveMode; int nWiData; int pDbFd; scalar_t__* apWiData; scalar_t__ bShmUnreliable; } ;
typedef TYPE_1__ Wal ;


 scalar_t__ WAL_HEAPMEMORY_MODE ;
 int sqlite3OsShmUnmap (int ,int) ;
 int sqlite3_free (void*) ;

__attribute__((used)) static void walIndexClose(Wal *pWal, int isDelete){
  if( pWal->exclusiveMode==WAL_HEAPMEMORY_MODE || pWal->bShmUnreliable ){
    int i;
    for(i=0; i<pWal->nWiData; i++){
      sqlite3_free((void *)pWal->apWiData[i]);
      pWal->apWiData[i] = 0;
    }
  }
  if( pWal->exclusiveMode!=WAL_HEAPMEMORY_MODE ){
    sqlite3OsShmUnmap(pWal->pDbFd, isDelete);
  }
}
