
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int volatile u32 ;
struct TYPE_3__ {int nWiData; scalar_t__ exclusiveMode; int volatile** apWiData; int readOnly; int writeLock; int pDbFd; } ;
typedef TYPE_1__ Wal ;


 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int SQLITE_READONLY ;
 int WALINDEX_PGSZ ;
 scalar_t__ WAL_HEAPMEMORY_MODE ;
 int WAL_SHM_RDONLY ;
 int assert (int) ;
 int memset (void*,int ,int) ;
 scalar_t__ sqlite3MallocZero (int ) ;
 int sqlite3OsShmMap (int ,int,int ,int ,void volatile**) ;
 scalar_t__ sqlite3_realloc64 (void*,int) ;

__attribute__((used)) static int walIndexPage(Wal *pWal, int iPage, volatile u32 **ppPage){
  int rc = SQLITE_OK;


  if( pWal->nWiData<=iPage ){
    int nByte = sizeof(u32*)*(iPage+1);
    volatile u32 **apNew;
    apNew = (volatile u32 **)sqlite3_realloc64((void *)pWal->apWiData, nByte);
    if( !apNew ){
      *ppPage = 0;
      return SQLITE_NOMEM_BKPT;
    }
    memset((void*)&apNew[pWal->nWiData], 0,
           sizeof(u32*)*(iPage+1-pWal->nWiData));
    pWal->apWiData = apNew;
    pWal->nWiData = iPage+1;
  }


  if( pWal->apWiData[iPage]==0 ){
    if( pWal->exclusiveMode==WAL_HEAPMEMORY_MODE ){
      pWal->apWiData[iPage] = (u32 volatile *)sqlite3MallocZero(WALINDEX_PGSZ);
      if( !pWal->apWiData[iPage] ) rc = SQLITE_NOMEM_BKPT;
    }else{
      rc = sqlite3OsShmMap(pWal->pDbFd, iPage, WALINDEX_PGSZ,
          pWal->writeLock, (void volatile **)&pWal->apWiData[iPage]
      );
      if( rc==SQLITE_READONLY ){
        pWal->readOnly |= WAL_SHM_RDONLY;
        rc = SQLITE_OK;
      }
    }
  }

  *ppPage = pWal->apWiData[iPage];
  assert( iPage==0 || *ppPage || rc!=SQLITE_OK );
  return rc;
}
