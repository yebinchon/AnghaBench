
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ hShm; int pShmMutex; TYPE_3__* pFirst; TYPE_1__* pInode; } ;
typedef TYPE_2__ unixShmNode ;
struct TYPE_8__ {int exclMask; int sharedMask; int id; struct TYPE_8__* pNext; TYPE_2__* pShmNode; } ;
typedef TYPE_3__ unixShm ;
struct TYPE_9__ {TYPE_1__* pInode; TYPE_3__* pShm; } ;
typedef TYPE_4__ unixFile ;
typedef int u16 ;
typedef int sqlite3_file ;
struct TYPE_6__ {int bProcessLock; TYPE_2__* pShmNode; } ;


 int F_RDLCK ;
 int F_UNLCK ;
 int F_WRLCK ;
 int OSTRACE (char*) ;
 int SQLITE_BUSY ;
 int SQLITE_OK ;
 int SQLITE_SHM_EXCLUSIVE ;
 int SQLITE_SHM_LOCK ;
 int SQLITE_SHM_NLOCK ;
 int SQLITE_SHM_SHARED ;
 int SQLITE_SHM_UNLOCK ;
 scalar_t__ UNIX_SHM_BASE ;
 int assert (int) ;
 int osGetpid (int ) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 int unixShmSystemLock (TYPE_4__*,int ,scalar_t__,int) ;

__attribute__((used)) static int unixShmLock(
  sqlite3_file *fd,
  int ofst,
  int n,
  int flags
){
  unixFile *pDbFd = (unixFile*)fd;
  unixShm *p = pDbFd->pShm;
  unixShm *pX;
  unixShmNode *pShmNode = p->pShmNode;
  int rc = SQLITE_OK;
  u16 mask;

  assert( pShmNode==pDbFd->pInode->pShmNode );
  assert( pShmNode->pInode==pDbFd->pInode );
  assert( ofst>=0 && ofst+n<=SQLITE_SHM_NLOCK );
  assert( n>=1 );
  assert( flags==(SQLITE_SHM_LOCK | SQLITE_SHM_SHARED)
       || flags==(SQLITE_SHM_LOCK | SQLITE_SHM_EXCLUSIVE)
       || flags==(SQLITE_SHM_UNLOCK | SQLITE_SHM_SHARED)
       || flags==(SQLITE_SHM_UNLOCK | SQLITE_SHM_EXCLUSIVE) );
  assert( n==1 || (flags & SQLITE_SHM_EXCLUSIVE)!=0 );
  assert( pShmNode->hShm>=0 || pDbFd->pInode->bProcessLock==1 );
  assert( pShmNode->hShm<0 || pDbFd->pInode->bProcessLock==0 );

  mask = (1<<(ofst+n)) - (1<<ofst);
  assert( n>1 || mask==(1<<ofst) );
  sqlite3_mutex_enter(pShmNode->pShmMutex);
  if( flags & SQLITE_SHM_UNLOCK ){
    u16 allMask = 0;


    for(pX=pShmNode->pFirst; pX; pX=pX->pNext){
      if( pX==p ) continue;
      assert( (pX->exclMask & (p->exclMask|p->sharedMask))==0 );
      allMask |= pX->sharedMask;
    }


    if( (mask & allMask)==0 ){
      rc = unixShmSystemLock(pDbFd, F_UNLCK, ofst+UNIX_SHM_BASE, n);
    }else{
      rc = SQLITE_OK;
    }


    if( rc==SQLITE_OK ){
      p->exclMask &= ~mask;
      p->sharedMask &= ~mask;
    }
  }else if( flags & SQLITE_SHM_SHARED ){
    u16 allShared = 0;





    for(pX=pShmNode->pFirst; pX; pX=pX->pNext){
      if( (pX->exclMask & mask)!=0 ){
        rc = SQLITE_BUSY;
        break;
      }
      allShared |= pX->sharedMask;
    }


    if( rc==SQLITE_OK ){
      if( (allShared & mask)==0 ){
        rc = unixShmSystemLock(pDbFd, F_RDLCK, ofst+UNIX_SHM_BASE, n);
      }else{
        rc = SQLITE_OK;
      }
    }


    if( rc==SQLITE_OK ){
      p->sharedMask |= mask;
    }
  }else{



    for(pX=pShmNode->pFirst; pX; pX=pX->pNext){
      if( (pX->exclMask & mask)!=0 || (pX->sharedMask & mask)!=0 ){
        rc = SQLITE_BUSY;
        break;
      }
    }




    if( rc==SQLITE_OK ){
      rc = unixShmSystemLock(pDbFd, F_WRLCK, ofst+UNIX_SHM_BASE, n);
      if( rc==SQLITE_OK ){
        assert( (p->sharedMask & mask)==0 );
        p->exclMask |= mask;
      }
    }
  }
  sqlite3_mutex_leave(pShmNode->pShmMutex);
  OSTRACE(("SHM-LOCK shmid-%d, pid-%d got %03x,%03x\n",
           p->id, osGetpid(0), p->sharedMask, p->exclMask));
  return rc;
}
