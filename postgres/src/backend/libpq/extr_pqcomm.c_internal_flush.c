
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMERROR ;
 int ClientConnectionLost ;
 int EAGAIN ;
 int EINTR ;
 int EOF ;
 int EWOULDBLOCK ;
 int InterruptPending ;
 int MyProcPort ;
 char* PqSendBuffer ;
 int PqSendPointer ;
 int PqSendStart ;
 int ereport (int ,int ) ;
 int errcode_for_socket_access () ;
 int errmsg (char*) ;
 int errno ;
 int secure_write (int ,char*,int) ;

__attribute__((used)) static int
internal_flush(void)
{
 static int last_reported_send_errno = 0;

 char *bufptr = PqSendBuffer + PqSendStart;
 char *bufend = PqSendBuffer + PqSendPointer;

 while (bufptr < bufend)
 {
  int r;

  r = secure_write(MyProcPort, bufptr, bufend - bufptr);

  if (r <= 0)
  {
   if (errno == EINTR)
    continue;





   if (errno == EAGAIN ||
    errno == EWOULDBLOCK)
   {
    return 0;
   }
   if (errno != last_reported_send_errno)
   {
    last_reported_send_errno = errno;
    ereport(COMMERROR,
      (errcode_for_socket_access(),
       errmsg("could not send data to client: %m")));
   }







   PqSendStart = PqSendPointer = 0;
   ClientConnectionLost = 1;
   InterruptPending = 1;
   return EOF;
  }

  last_reported_send_errno = 0;
  bufptr += r;
  PqSendStart += r;
 }

 PqSendStart = PqSendPointer = 0;
 return 0;
}
