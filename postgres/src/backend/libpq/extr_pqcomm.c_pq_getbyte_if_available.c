
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int COMMERROR ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int EOF ;
 scalar_t__ EWOULDBLOCK ;
 int MyProcPort ;
 int PqCommReadingMsg ;
 unsigned char* PqRecvBuffer ;
 scalar_t__ PqRecvLength ;
 scalar_t__ PqRecvPointer ;
 int ereport (int ,int ) ;
 int errcode_for_socket_access () ;
 int errmsg (char*) ;
 scalar_t__ errno ;
 int secure_read (int ,unsigned char*,int) ;
 int socket_set_nonblocking (int) ;

int
pq_getbyte_if_available(unsigned char *c)
{
 int r;

 Assert(PqCommReadingMsg);

 if (PqRecvPointer < PqRecvLength)
 {
  *c = PqRecvBuffer[PqRecvPointer++];
  return 1;
 }


 socket_set_nonblocking(1);

 r = secure_read(MyProcPort, c, 1);
 if (r < 0)
 {





  if (errno == EAGAIN || errno == EWOULDBLOCK || errno == EINTR)
   r = 0;
  else
  {





   ereport(COMMERROR,
     (errcode_for_socket_access(),
      errmsg("could not receive data from client: %m")));
   r = EOF;
  }
 }
 else if (r == 0)
 {

  r = EOF;
 }

 return r;
}
