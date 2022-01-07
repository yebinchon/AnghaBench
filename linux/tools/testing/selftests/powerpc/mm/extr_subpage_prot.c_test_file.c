
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_sigaction; } ;
typedef int off_t ;


 void* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SA_SIGINFO ;
 int SEEK_END ;
 int SIGSEGV ;
 int SKIP_IF (int) ;
 char* file_name ;
 int lseek (int,int ,int ) ;
 void* mmap (int *,int,int,int ,int,int ) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int run_test (void*,int) ;
 int segv ;
 int sigaction (int ,struct sigaction*,int *) ;
 int syscall_available () ;

int test_file(void)
{
 struct sigaction act = {
  .sa_sigaction = segv,
  .sa_flags = SA_SIGINFO
 };
 void *fileblock;
 off_t filesize;
 int fd;

 SKIP_IF(!syscall_available());

 fd = open(file_name, O_RDWR);
 if (fd == -1) {
  perror("failed to open file");
  return 1;
 }
 sigaction(SIGSEGV, &act, ((void*)0));

 filesize = lseek(fd, 0, SEEK_END);
 if (filesize & 0xffff)
  filesize &= ~0xfffful;

 fileblock = mmap(((void*)0), filesize, PROT_READ | PROT_WRITE,
    MAP_SHARED, fd, 0);
 if (fileblock == MAP_FAILED) {
  perror("failed to map file");
  return 1;
 }
 printf("allocated %s for 0x%lx bytes at %p\n",
        file_name, filesize, fileblock);

 printf("testing file map...\n");

 return run_test(fileblock, filesize);
}
