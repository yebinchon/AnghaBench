
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADDR ;
 int FILE_NAME ;
 int FLAGS ;
 int LENGTH ;
 void* MAP_FAILED ;
 int O_CREAT ;
 int O_RDWR ;
 int PROTECTION ;
 int check_bytes (void*) ;
 int close (int) ;
 int exit (int) ;
 void* mmap (int ,int ,int ,int ,int,int ) ;
 int munmap (void*,int ) ;
 int open (int ,int,int) ;
 int perror (char*) ;
 int printf (char*,void*) ;
 int read_bytes (void*) ;
 int unlink (int ) ;
 int write_bytes (void*) ;

int main(void)
{
 void *addr;
 int fd, ret;

 fd = open(FILE_NAME, O_CREAT | O_RDWR, 0755);
 if (fd < 0) {
  perror("Open failed");
  exit(1);
 }

 addr = mmap(ADDR, LENGTH, PROTECTION, FLAGS, fd, 0);
 if (addr == MAP_FAILED) {
  perror("mmap");
  unlink(FILE_NAME);
  exit(1);
 }

 printf("Returned address is %p\n", addr);
 check_bytes(addr);
 write_bytes(addr);
 ret = read_bytes(addr);

 munmap(addr, LENGTH);
 close(fd);
 unlink(FILE_NAME);

 return ret;
}
