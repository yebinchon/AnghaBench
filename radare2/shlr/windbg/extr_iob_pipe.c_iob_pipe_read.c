
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ errno ;
 int recv (int,int *,int const,int ) ;
 int select (int,int *,int *,int *,int *) ;

__attribute__((used)) static int iob_pipe_read(void *p, uint8_t *buf, const uint64_t count, const int timeout) {
 int result;
 fd_set readset;
 int fd = (int) (size_t) p;
 for (;;) {
  FD_ZERO (&readset);
  FD_SET (fd, &readset);
  result = select (fd + 1, &readset, ((void*)0), ((void*)0), ((void*)0));
  if (result < 1) {
   if (errno == EINTR) continue;
   return -1;
  }
  if (FD_ISSET (fd, &readset)) {
   return recv ((int) (size_t) p, buf, count, 0);
  }
 }
 return EINTR;
}
