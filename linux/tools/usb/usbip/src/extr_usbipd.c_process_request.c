
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int close (int) ;
 int do_accept (int) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int recv_pdu (int) ;

int process_request(int listenfd)
{
 pid_t childpid;
 int connfd;

 connfd = do_accept(listenfd);
 if (connfd < 0)
  return -1;
 childpid = fork();
 if (childpid == 0) {
  close(listenfd);
  recv_pdu(connfd);
  exit(0);
 }
 close(connfd);
 return 0;
}
