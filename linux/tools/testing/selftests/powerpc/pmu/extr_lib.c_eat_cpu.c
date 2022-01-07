
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union pipe {int fds; } ;
typedef int pid_t ;


 int FAIL_IF (int) ;
 int SIGKILL ;
 int bind_to_cpu (int) ;
 int eat_cpu_child (union pipe,union pipe) ;
 int exit (int ) ;
 int fork () ;
 int getpid () ;
 int kill (int,int ) ;
 int pick_online_cpu () ;
 int pipe (int ) ;
 int printf (char*,int) ;
 scalar_t__ sync_with_child (union pipe,union pipe) ;

pid_t eat_cpu(int (test_function)(void))
{
 union pipe read_pipe, write_pipe;
 int cpu, rc;
 pid_t pid;

 cpu = pick_online_cpu();
 FAIL_IF(cpu < 0);
 FAIL_IF(bind_to_cpu(cpu));

 if (pipe(read_pipe.fds) == -1)
  return -1;

 if (pipe(write_pipe.fds) == -1)
  return -1;

 pid = fork();
 if (pid == 0)
  exit(eat_cpu_child(write_pipe, read_pipe));

 if (sync_with_child(read_pipe, write_pipe)) {
  rc = -1;
  goto out;
 }

 printf("main test running as pid %d\n", getpid());

 rc = test_function();
out:
 kill(pid, SIGKILL);

 return rc;
}
