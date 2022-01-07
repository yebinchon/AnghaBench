
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_peeksiginfo_args {int flags; scalar_t__ off; int nr; } ;
typedef int siginfo_t ;
typedef int pid_t ;


 scalar_t__ EFAULT ;
 scalar_t__ EINVAL ;
 int MAP_ANONYMOUS ;
 void* MAP_FAILED ;
 int MAP_FIXED ;
 int MAP_PRIVATE ;
 int PAGE_SIZE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int PTRACE_PEEKSIGINFO ;
 int SIGNR ;
 int err (char*,...) ;
 scalar_t__ errno ;
 void* mmap (void*,int,int,int,int,int ) ;
 int munmap (void*,int) ;
 int sys_ptrace (int ,int ,struct ptrace_peeksiginfo_args*,void*) ;

__attribute__((used)) static int check_error_paths(pid_t child)
{
 struct ptrace_peeksiginfo_args arg;
 int ret, exit_code = -1;
 void *addr_rw, *addr_ro;





 addr_rw = mmap(((void*)0), 2 * PAGE_SIZE, PROT_READ | PROT_WRITE,
    MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
 if (addr_rw == MAP_FAILED) {
  err("mmap() failed: %m\n");
  return 1;
 }

 addr_ro = mmap(addr_rw + PAGE_SIZE, PAGE_SIZE, PROT_READ,
   MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
 if (addr_ro == MAP_FAILED) {
  err("mmap() failed: %m\n");
  goto out;
 }

 arg.nr = SIGNR;
 arg.off = 0;


 arg.flags = ~0;
 ret = sys_ptrace(PTRACE_PEEKSIGINFO, child, &arg, addr_rw);
 if (ret != -1 || errno != EINVAL) {
  err("sys_ptrace() returns %d (expected -1),"
    " errno %d (expected %d): %m\n",
    ret, errno, EINVAL);
  goto out;
 }
 arg.flags = 0;


 ret = sys_ptrace(PTRACE_PEEKSIGINFO, child, &arg,
     addr_ro - sizeof(siginfo_t) * 2);
 if (ret != 2) {
  err("sys_ptrace() returns %d (expected 2): %m\n", ret);
  goto out;
 }


 ret = sys_ptrace(PTRACE_PEEKSIGINFO, child, &arg, addr_ro);
 if (ret != -1 && errno != EFAULT) {
  err("sys_ptrace() returns %d (expected -1),"
    " errno %d (expected %d): %m\n",
    ret, errno, EFAULT);
  goto out;
 }

 exit_code = 0;
out:
 munmap(addr_rw, 2 * PAGE_SIZE);
 return exit_code;
}
