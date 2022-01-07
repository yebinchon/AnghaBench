
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int EINTR ;
 int errno ;
 int write (int,unsigned char*,size_t) ;

__attribute__((used)) static int trywrite(int fd, void* buf, size_t bytes) {
 ssize_t ret;
 unsigned char *out = buf;
again:
 ret = write(fd, out, bytes);
 switch(ret) {
  case -1:
   if(errno == EINTR) goto again;
  case 0:
   return 0;
  default:
   if(ret == bytes || !bytes) return 1;
   out += ret;
   bytes -= ret;
   goto again;
 }
}
