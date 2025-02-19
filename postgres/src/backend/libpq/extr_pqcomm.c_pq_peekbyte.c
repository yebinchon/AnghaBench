
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int EOF ;
 int PqCommReadingMsg ;
 scalar_t__* PqRecvBuffer ;
 size_t PqRecvLength ;
 size_t PqRecvPointer ;
 scalar_t__ pq_recvbuf () ;

int
pq_peekbyte(void)
{
 Assert(PqCommReadingMsg);

 while (PqRecvPointer >= PqRecvLength)
 {
  if (pq_recvbuf())
   return EOF;
 }
 return (unsigned char) PqRecvBuffer[PqRecvPointer];
}
