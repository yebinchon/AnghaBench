
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int EOF ;
 int PqCommReadingMsg ;
 scalar_t__ PqRecvLength ;
 scalar_t__ PqRecvPointer ;
 scalar_t__ pq_recvbuf () ;

__attribute__((used)) static int
pq_discardbytes(size_t len)
{
 size_t amount;

 Assert(PqCommReadingMsg);

 while (len > 0)
 {
  while (PqRecvPointer >= PqRecvLength)
  {
   if (pq_recvbuf())
    return EOF;
  }
  amount = PqRecvLength - PqRecvPointer;
  if (amount > len)
   amount = len;
  PqRecvPointer += amount;
  len -= amount;
 }
 return 0;
}
