
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kernel_thread_fd (unsigned int) ;
 int test_lookup (int) ;
 int test_readdir (int) ;

int main(void)
{
 unsigned int pid;
 int fd;







 pid = 2;
 while ((fd = kernel_thread_fd(pid)) == -1 && pid < 1024) {
  pid++;
 }

 if (pid >= 1024)
  return 1;

 test_readdir(fd);
 test_lookup(fd);

 return 0;
}
