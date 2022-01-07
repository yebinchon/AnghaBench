
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDWR ;
 int PROT_WRITE ;
 int SKIP_IF (int) ;
 int bufsize ;
 int close (int) ;
 int debug ;
 int free (void*) ;
 int memcpy (void*,void*,int) ;
 void* mmap (int *,int,int ,int ,int,int) ;
 int munmap (void*,int) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int posix_memalign (void**,int,int) ;
 int preload_data (void*,int,int) ;
 int printf (char*,...) ;
 int test_memcmp (void*,void*,int,int,char*) ;
 int test_memcpy (void*,void*,int,int,void (*) (char*,char*)) ;

int do_test(char *test_name, void (*test_func)(char *, char *))
{
 int offset, width, fd, rc, r;
 void *mem0, *mem1, *ci0, *ci1;

 printf("\tDoing %s:\t", test_name);

 fd = open("/dev/fb0", O_RDWR);
 if (fd < 0) {
  printf("\n");
  perror("Can't open /dev/fb0 now?");
  return 1;
 }

 ci0 = mmap(((void*)0), bufsize, PROT_WRITE, MAP_SHARED,
     fd, 0x0);
 ci1 = mmap(((void*)0), bufsize, PROT_WRITE, MAP_SHARED,
     fd, bufsize);
 if ((ci0 == MAP_FAILED) || (ci1 == MAP_FAILED)) {
  printf("\n");
  perror("mmap failed");
  SKIP_IF(1);
 }

 rc = posix_memalign(&mem0, bufsize, bufsize);
 if (rc) {
  printf("\n");
  return rc;
 }

 rc = posix_memalign(&mem1, bufsize, bufsize);
 if (rc) {
  printf("\n");
  free(mem0);
  return rc;
 }

 rc = 0;

 for (offset = 1; offset < 16; offset++) {
  width = 16;
  r = 0;


  preload_data(ci0, offset, width);
  preload_data(mem0, offset, width);
  memcpy(ci0, mem0, bufsize);
  memcpy(ci1, mem1, bufsize);


  test_memcmp(mem0, ci0, width, offset, test_name);

  r |= test_memcpy(ci1, ci0, width, offset, test_func);
  r |= test_memcpy(mem1, mem0, width, offset, test_func);
  if (r && !debug) {
   printf("FAILED: Got signal");
   rc = 1;
   break;
  }

  r |= test_memcmp(mem1, ci1, width, offset, test_name);
  if (r && !debug) {
   printf("FAILED: Wrong Data");
   rc = 1;
   break;
  }
 }

 if (rc == 0)
  printf("PASSED");

 printf("\n");

 munmap(ci0, bufsize);
 munmap(ci1, bufsize);
 free(mem0);
 free(mem1);
 close(fd);

 return rc;
}
