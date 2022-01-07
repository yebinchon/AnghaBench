
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* pUnused; } ;
typedef TYPE_1__ unixInodeInfo ;
struct TYPE_7__ {int h; TYPE_3__* pPreallocatedUnused; TYPE_1__* pInode; } ;
typedef TYPE_2__ unixFile ;
struct TYPE_8__ {struct TYPE_8__* pNext; } ;
typedef TYPE_3__ UnixUnusedFd ;


 int assert (int ) ;
 int unixFileMutexHeld (TYPE_2__*) ;

__attribute__((used)) static void setPendingFd(unixFile *pFile){
  unixInodeInfo *pInode = pFile->pInode;
  UnixUnusedFd *p = pFile->pPreallocatedUnused;
  assert( unixFileMutexHeld(pFile) );
  p->pNext = pInode->pUnused;
  pInode->pUnused = p;
  pFile->h = -1;
  pFile->pPreallocatedUnused = 0;
}
