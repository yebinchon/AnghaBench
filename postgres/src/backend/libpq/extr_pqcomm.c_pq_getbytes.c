
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int EOF ;
 int PqCommReadingMsg ;
 scalar_t__ PqRecvBuffer ;
 scalar_t__ PqRecvLength ;
 scalar_t__ PqRecvPointer ;
 int memcpy (char*,scalar_t__,size_t) ;
 scalar_t__ pq_recvbuf () ;

int
pq_getbytes(char *s, size_t len)
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
  memcpy(s, PqRecvBuffer + PqRecvPointer, amount);
  PqRecvPointer += amount;
  s += amount;
  len -= amount;
 }
 return 0;
}
