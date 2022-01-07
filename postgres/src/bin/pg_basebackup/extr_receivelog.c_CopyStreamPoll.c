
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;
typedef int pgsocket ;
typedef int fd_set ;
typedef int PGconn ;


 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int Max (int,int) ;
 int PGINVALID_SOCKET ;
 int PQerrorMessage (int *) ;
 int PQsocket (int *) ;
 scalar_t__ errno ;
 int pg_log_error (char*,...) ;
 int select (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int
CopyStreamPoll(PGconn *conn, long timeout_ms, pgsocket stop_socket)
{
 int ret;
 fd_set input_mask;
 int connsocket;
 int maxfd;
 struct timeval timeout;
 struct timeval *timeoutptr;

 connsocket = PQsocket(conn);
 if (connsocket < 0)
 {
  pg_log_error("invalid socket: %s", PQerrorMessage(conn));
  return -1;
 }

 FD_ZERO(&input_mask);
 FD_SET(connsocket, &input_mask);
 maxfd = connsocket;
 if (stop_socket != PGINVALID_SOCKET)
 {
  FD_SET(stop_socket, &input_mask);
  maxfd = Max(maxfd, stop_socket);
 }

 if (timeout_ms < 0)
  timeoutptr = ((void*)0);
 else
 {
  timeout.tv_sec = timeout_ms / 1000L;
  timeout.tv_usec = (timeout_ms % 1000L) * 1000L;
  timeoutptr = &timeout;
 }

 ret = select(maxfd + 1, &input_mask, ((void*)0), ((void*)0), timeoutptr);

 if (ret < 0)
 {
  if (errno == EINTR)
   return 0;
  pg_log_error("select() failed: %m");
  return -1;
 }
 if (ret > 0 && FD_ISSET(connsocket, &input_mask))
  return 1;

 return 0;
}
