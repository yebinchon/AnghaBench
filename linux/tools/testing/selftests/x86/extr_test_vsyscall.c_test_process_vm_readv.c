
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {char* iov_base; int iov_len; } ;


 int errno ;
 int getpid () ;
 int memcmp (char*,void const*,int) ;
 int printf (char*,...) ;
 int process_vm_readv (int ,struct iovec*,int,struct iovec*,int,int ) ;
 scalar_t__ vsyscall_map_r ;

__attribute__((used)) static int test_process_vm_readv(void)
{

 char buf[4096];
 struct iovec local, remote;
 int ret;

 printf("[RUN]\tprocess_vm_readv() from vsyscall page\n");

 local.iov_base = buf;
 local.iov_len = 4096;
 remote.iov_base = (void *)0xffffffffff600000;
 remote.iov_len = 4096;
 ret = process_vm_readv(getpid(), &local, 1, &remote, 1, 0);
 if (ret != 4096) {
  printf("[OK]\tprocess_vm_readv() failed (ret = %d, errno = %d)\n", ret, errno);
  return 0;
 }

 if (vsyscall_map_r) {
  if (!memcmp(buf, (const void *)0xffffffffff600000, 4096)) {
   printf("[OK]\tIt worked and read correct data\n");
  } else {
   printf("[FAIL]\tIt worked but returned incorrect data\n");
   return 1;
  }
 }


 return 0;
}
