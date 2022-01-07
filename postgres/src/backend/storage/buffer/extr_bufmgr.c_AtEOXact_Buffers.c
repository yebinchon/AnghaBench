
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int AtEOXact_LocalBuffers (int) ;
 int CheckForBufferLeaks () ;
 scalar_t__ PrivateRefCountOverflowed ;

void
AtEOXact_Buffers(bool isCommit)
{
 CheckForBufferLeaks();

 AtEOXact_LocalBuffers(isCommit);

 Assert(PrivateRefCountOverflowed == 0);
}
