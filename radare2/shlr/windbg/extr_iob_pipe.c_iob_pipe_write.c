
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 scalar_t__ EPIPE ;
 scalar_t__ errno ;
 int exit (int) ;
 int r_sys_perror (char*) ;
 int send (int,int const*,int const,int ) ;

__attribute__((used)) static int iob_pipe_write(void *p, const uint8_t *buf, const uint64_t count, const int timeout) {
 int ret = send ((int) (size_t) p, buf, count, 0);
 if (ret < 1) {
  r_sys_perror ("iob_pipe_write, send");
  if (errno == EPIPE) {
   exit (1);
  }
 }
 return ret;
}
