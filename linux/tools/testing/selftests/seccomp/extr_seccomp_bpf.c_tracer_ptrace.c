
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __test_metadata {int dummy; } ;
typedef int pid_t ;


 int ESRCH ;
 int EXPECT_EQ (int ,unsigned long) ;
 int PTRACE_EVENTMSG_SYSCALL_ENTRY ;
 int PTRACE_EVENTMSG_SYSCALL_EXIT ;
 int PTRACE_GETEVENTMSG ;
 int __NR_getpid ;
 int __NR_getppid ;
 int __NR_gettid ;
 int __NR_openat ;
 int change_syscall (struct __test_metadata*,int ,int,int) ;
 int get_syscall (struct __test_metadata*,int ) ;
 int ptrace (int ,int ,int *,unsigned long*) ;

void tracer_ptrace(struct __test_metadata *_metadata, pid_t tracee,
     int status, void *args)
{
 int ret, nr;
 unsigned long msg;
 static bool entry;





 entry = !entry;


 ret = ptrace(PTRACE_GETEVENTMSG, tracee, ((void*)0), &msg);
 EXPECT_EQ(0, ret);
 EXPECT_EQ(entry ? PTRACE_EVENTMSG_SYSCALL_ENTRY
   : PTRACE_EVENTMSG_SYSCALL_EXIT, msg);

 if (!entry)
  return;

 nr = get_syscall(_metadata, tracee);

 if (nr == __NR_getpid)
  change_syscall(_metadata, tracee, __NR_getppid, 0);
 if (nr == __NR_gettid)
  change_syscall(_metadata, tracee, -1, 45000);
 if (nr == __NR_openat)
  change_syscall(_metadata, tracee, -1, -ESRCH);
}
