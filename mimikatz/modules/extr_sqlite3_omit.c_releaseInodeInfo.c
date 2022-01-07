
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ nRef; scalar_t__ pShmNode; int pLockMutex; struct TYPE_9__* pPrev; struct TYPE_9__* pNext; } ;
typedef TYPE_1__ unixInodeInfo ;
struct TYPE_10__ {TYPE_1__* pInode; } ;
typedef TYPE_2__ unixFile ;


 scalar_t__ ALWAYS (TYPE_1__*) ;
 int assert (int) ;
 int closePendingFds (TYPE_2__*) ;
 TYPE_1__* inodeList ;
 int sqlite3_free (TYPE_1__*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_free (int ) ;
 int sqlite3_mutex_leave (int ) ;
 int unixFileMutexNotheld (TYPE_2__*) ;
 int unixMutexHeld () ;

__attribute__((used)) static void releaseInodeInfo(unixFile *pFile){
  unixInodeInfo *pInode = pFile->pInode;
  assert( unixMutexHeld() );
  assert( unixFileMutexNotheld(pFile) );
  if( ALWAYS(pInode) ){
    pInode->nRef--;
    if( pInode->nRef==0 ){
      assert( pInode->pShmNode==0 );
      sqlite3_mutex_enter(pInode->pLockMutex);
      closePendingFds(pFile);
      sqlite3_mutex_leave(pInode->pLockMutex);
      if( pInode->pPrev ){
        assert( pInode->pPrev->pNext==pInode );
        pInode->pPrev->pNext = pInode->pNext;
      }else{
        assert( inodeList==pInode );
        inodeList = pInode->pNext;
      }
      if( pInode->pNext ){
        assert( pInode->pNext->pPrev==pInode );
        pInode->pNext->pPrev = pInode->pPrev;
      }
      sqlite3_mutex_free(pInode->pLockMutex);
      sqlite3_free(pInode);
    }
  }
}
