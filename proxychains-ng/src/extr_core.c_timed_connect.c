
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct pollfd {int fd; int events; } ;
typedef int socklen_t ;


 scalar_t__ EINPROGRESS ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int PDEBUG (char*,int) ;
 int PFUNC () ;
 int POLLOUT ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 scalar_t__ errno ;
 int fcntl (int,int ,int) ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int perror (char*) ;
 int poll_retry (struct pollfd*,int,int ) ;
 int tcp_connect_time_out ;
 int true_connect (int,struct sockaddr const*,int) ;

__attribute__((used)) static int timed_connect(int sock, const struct sockaddr *addr, socklen_t len) {
 int ret, value;
 socklen_t value_len;
 struct pollfd pfd[1];
 PFUNC();

 pfd[0].fd = sock;
 pfd[0].events = POLLOUT;
 fcntl(sock, F_SETFL, O_NONBLOCK);
 ret = true_connect(sock, addr, len);
 PDEBUG("\nconnect ret=%d\n", ret);

 if(ret == -1 && errno == EINPROGRESS) {
  ret = poll_retry(pfd, 1, tcp_connect_time_out);
  PDEBUG("\npoll ret=%d\n", ret);
  if(ret == 1) {
   value_len = sizeof(socklen_t);
   getsockopt(sock, SOL_SOCKET, SO_ERROR, &value, &value_len);
   PDEBUG("\nvalue=%d\n", value);
   if(!value)
    ret = 0;
   else
    ret = -1;
  } else {
   ret = -1;
  }
 } else {




  if(ret != 0)
   ret = -1;
 }

 fcntl(sock, F_SETFL, !O_NONBLOCK);
 return ret;
}
