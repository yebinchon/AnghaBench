
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADDR ;
 int FLAGS ;
 size_t LENGTH ;
 void* MAP_FAILED ;
 int MAP_HUGE_MASK ;
 int MAP_HUGE_SHIFT ;
 int PROTECTION ;
 int atoi (char*) ;
 int atol (char*) ;
 int check_bytes (void*) ;
 int exit (int) ;
 void* mmap (int ,size_t,int ,int,int,int ) ;
 scalar_t__ munmap (void*,size_t) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int read_bytes (void*) ;
 int write_bytes (void*) ;

int main(int argc, char **argv)
{
 void *addr;
 int ret;
 size_t length = LENGTH;
 int flags = FLAGS;
 int shift = 0;

 if (argc > 1)
  length = atol(argv[1]) << 20;
 if (argc > 2) {
  shift = atoi(argv[2]);
  if (shift)
   flags |= (shift & MAP_HUGE_MASK) << MAP_HUGE_SHIFT;
 }

 if (shift)
  printf("%u kB hugepages\n", 1 << shift);
 else
  printf("Default size hugepages\n");
 printf("Mapping %lu Mbytes\n", (unsigned long)length >> 20);

 addr = mmap(ADDR, length, PROTECTION, flags, -1, 0);
 if (addr == MAP_FAILED) {
  perror("mmap");
  exit(1);
 }

 printf("Returned address is %p\n", addr);
 check_bytes(addr);
 write_bytes(addr);
 ret = read_bytes(addr);


 if (munmap(addr, LENGTH)) {
  perror("munmap");
  exit(1);
 }

 return ret;
}
