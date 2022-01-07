
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 int EINTR ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int PFUNC () ;
 int dprintf (int,char*,char*) ;
 int errno ;
 int select (int,int *,int *,int *,int *) ;
 char* strerror_r (int,char*,int) ;

__attribute__((used)) static int wait_data(int readfd) {
 PFUNC();
 fd_set fds;
 FD_ZERO(&fds);
 FD_SET(readfd, &fds);
 int ret;
 while((ret = select(readfd+1, &fds, ((void*)0), ((void*)0), ((void*)0))) <= 0) {
  if(ret < 0) {
   int e = errno;
   if(e == EINTR) continue;





   return 0;
  }
 }
 return 1;
}
