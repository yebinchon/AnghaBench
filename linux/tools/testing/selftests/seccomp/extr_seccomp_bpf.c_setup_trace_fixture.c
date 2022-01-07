
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tracer_func_t ;
struct __test_metadata {int dummy; } ;
typedef scalar_t__ pid_t ;


 int ASSERT_EQ (int ,int ) ;
 int ASSERT_LE (int ,scalar_t__) ;
 int PR_SET_PTRACER ;
 int SIGALRM ;
 int __NR_exit ;
 int close (int) ;
 int cont_handler ;
 scalar_t__ fork () ;
 scalar_t__ getpid () ;
 int pipe (int*) ;
 int prctl (int ,scalar_t__,int ,int ,int ) ;
 int read (int,char*,int) ;
 int signal (int ,int ) ;
 int start_tracer (struct __test_metadata*,int,scalar_t__,int ,void*,int) ;
 int syscall (int ,int ) ;

pid_t setup_trace_fixture(struct __test_metadata *_metadata,
     tracer_func_t func, void *args, bool ptrace_syscall)
{
 char sync;
 int pipefd[2];
 pid_t tracer_pid;
 pid_t tracee = getpid();


 ASSERT_EQ(0, pipe(pipefd));


 tracer_pid = fork();
 ASSERT_LE(0, tracer_pid);
 signal(SIGALRM, cont_handler);
 if (tracer_pid == 0) {
  close(pipefd[0]);
  start_tracer(_metadata, pipefd[1], tracee, func, args,
        ptrace_syscall);
  syscall(__NR_exit, 0);
 }
 close(pipefd[1]);
 prctl(PR_SET_PTRACER, tracer_pid, 0, 0, 0);
 read(pipefd[0], &sync, 1);
 close(pipefd[0]);

 return tracer_pid;
}
