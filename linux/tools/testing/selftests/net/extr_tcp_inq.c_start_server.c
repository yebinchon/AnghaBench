
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int addr ;


 int BUF_SIZE ;
 scalar_t__ EINTR ;
 int accept (int,struct sockaddr*,int*) ;
 int close (int) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,int) ;
 int free (char*) ;
 char* malloc (int) ;
 int perror (char*) ;
 int pthread_exit (int ) ;
 int send (int,char*,int,int ) ;
 int sleep (int) ;
 int stderr ;

void *start_server(void *arg)
{
 int server_fd = (int)(unsigned long)arg;
 struct sockaddr_in addr;
 socklen_t addrlen = sizeof(addr);
 char *buf;
 int fd;
 int r;

 buf = malloc(BUF_SIZE);

 for (;;) {
  fd = accept(server_fd, (struct sockaddr *)&addr, &addrlen);
  if (fd == -1) {
   perror("accept");
   break;
  }
  do {
   r = send(fd, buf, BUF_SIZE, 0);
  } while (r < 0 && errno == EINTR);
  if (r < 0)
   perror("send");
  if (r != BUF_SIZE)
   fprintf(stderr, "can only send %d bytes\n", r);




  sleep(1);
  close(fd);
 }

 free(buf);
 close(server_fd);
 pthread_exit(0);
}
