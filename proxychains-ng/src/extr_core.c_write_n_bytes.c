
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write (int,char*,size_t) ;

__attribute__((used)) static int write_n_bytes(int fd, char *buff, size_t size) {
 int i = 0;
 size_t wrote = 0;
 for(;;) {
  i = write(fd, &buff[wrote], size - wrote);
  if(i <= 0)
   return i;
  wrote += i;
  if(wrote == size)
   return wrote;
 }
}
