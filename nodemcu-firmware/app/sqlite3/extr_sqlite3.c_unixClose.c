
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_5__* pInode; } ;
typedef TYPE_1__ unixFile ;
typedef int sqlite3_file ;
struct TYPE_7__ {scalar_t__ nLock; scalar_t__ bProcessLock; } ;


 scalar_t__ ALWAYS (TYPE_5__*) ;
 int NO_LOCK ;
 int SQLITE_OK ;
 int assert (int) ;
 int closeUnixFile (int *) ;
 int releaseInodeInfo (TYPE_1__*) ;
 int setPendingFd (TYPE_1__*) ;
 int unixEnterMutex () ;
 int unixLeaveMutex () ;
 int unixUnlock (int *,int ) ;
 int verifyDbFile (TYPE_1__*) ;

__attribute__((used)) static int unixClose(sqlite3_file *id){
  int rc = SQLITE_OK;
  unixFile *pFile = (unixFile *)id;
  verifyDbFile(pFile);
  unixUnlock(id, NO_LOCK);
  unixEnterMutex();




  assert( pFile->pInode->nLock>0 || pFile->pInode->bProcessLock==0 );
  if( ALWAYS(pFile->pInode) && pFile->pInode->nLock ){





    setPendingFd(pFile);
  }
  releaseInodeInfo(pFile);
  rc = closeUnixFile(id);
  unixLeaveMutex();
  return rc;
}
