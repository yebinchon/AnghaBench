
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMERROR ;
 scalar_t__ EINTR ;
 int EOF ;
 int MyProcPort ;
 scalar_t__ PQ_RECV_BUFFER_SIZE ;
 scalar_t__ PqRecvBuffer ;
 scalar_t__ PqRecvLength ;
 scalar_t__ PqRecvPointer ;
 int ereport (int ,int ) ;
 int errcode_for_socket_access () ;
 int errmsg (char*) ;
 scalar_t__ errno ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 int secure_read (int ,scalar_t__,scalar_t__) ;
 int socket_set_nonblocking (int) ;

__attribute__((used)) static int
pq_recvbuf(void)
{
 if (PqRecvPointer > 0)
 {
  if (PqRecvLength > PqRecvPointer)
  {

   memmove(PqRecvBuffer, PqRecvBuffer + PqRecvPointer,
     PqRecvLength - PqRecvPointer);
   PqRecvLength -= PqRecvPointer;
   PqRecvPointer = 0;
  }
  else
   PqRecvLength = PqRecvPointer = 0;
 }


 socket_set_nonblocking(0);


 for (;;)
 {
  int r;

  r = secure_read(MyProcPort, PqRecvBuffer + PqRecvLength,
      PQ_RECV_BUFFER_SIZE - PqRecvLength);

  if (r < 0)
  {
   if (errno == EINTR)
    continue;






   ereport(COMMERROR,
     (errcode_for_socket_access(),
      errmsg("could not receive data from client: %m")));
   return EOF;
  }
  if (r == 0)
  {




   return EOF;
  }

  PqRecvLength += r;
  return 0;
 }
}
