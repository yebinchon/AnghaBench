
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 scalar_t__ PqSendBuffer ;
 scalar_t__ PqSendBufferSize ;
 scalar_t__ PqSendPointer ;
 scalar_t__ internal_flush () ;
 int memcpy (scalar_t__,char const*,size_t) ;
 int socket_set_nonblocking (int) ;

__attribute__((used)) static int
internal_putbytes(const char *s, size_t len)
{
 size_t amount;

 while (len > 0)
 {

  if (PqSendPointer >= PqSendBufferSize)
  {
   socket_set_nonblocking(0);
   if (internal_flush())
    return EOF;
  }
  amount = PqSendBufferSize - PqSendPointer;
  if (amount > len)
   amount = len;
  memcpy(PqSendBuffer + PqSendPointer, s, amount);
  PqSendPointer += amount;
  s += amount;
  len -= amount;
 }
 return 0;
}
