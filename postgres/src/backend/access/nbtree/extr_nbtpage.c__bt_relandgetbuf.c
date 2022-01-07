
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferIsValid (int ) ;
 int LockBuffer (int ,int) ;
 scalar_t__ P_NEW ;
 int ReleaseAndReadBuffer (int ,int ,scalar_t__) ;
 int _bt_checkpage (int ,int ) ;

Buffer
_bt_relandgetbuf(Relation rel, Buffer obuf, BlockNumber blkno, int access)
{
 Buffer buf;

 Assert(blkno != P_NEW);
 if (BufferIsValid(obuf))
  LockBuffer(obuf, BUFFER_LOCK_UNLOCK);
 buf = ReleaseAndReadBuffer(obuf, rel, blkno);
 LockBuffer(buf, access);
 _bt_checkpage(rel, buf);
 return buf;
}
