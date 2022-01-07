
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Buffer ;
typedef int BrinRevmap ;
typedef int BlockNumber ;


 int BUFFER_LOCK_EXCLUSIVE ;
 int LockBuffer (int ,int ) ;
 int revmap_get_buffer (int *,int ) ;

Buffer
brinLockRevmapPageForUpdate(BrinRevmap *revmap, BlockNumber heapBlk)
{
 Buffer rmBuf;

 rmBuf = revmap_get_buffer(revmap, heapBlk);
 LockBuffer(rmBuf, BUFFER_LOCK_EXCLUSIVE);

 return rmBuf;
}
