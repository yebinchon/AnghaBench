
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union pipe {int fds; } ;
struct event {int dummy; } ;
typedef scalar_t__ pid_t ;


 int FAIL_IF (int) ;
 int SKIP_IF (int) ;
 int ebb_child (union pipe,union pipe) ;
 int ebb_is_supported () ;
 int event_disable (struct event*) ;
 int event_read (struct event*) ;
 int event_report (struct event*) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int kill_child_and_wait (scalar_t__) ;
 int pipe (int ) ;
 int setup_child_event (struct event*,scalar_t__) ;
 int sync_with_child (union pipe,union pipe) ;
 int wait_for_child (scalar_t__) ;

int task_event_vs_ebb(void)
{
 union pipe read_pipe, write_pipe;
 struct event event;
 pid_t pid;
 int rc;

 SKIP_IF(!ebb_is_supported());

 FAIL_IF(pipe(read_pipe.fds) == -1);
 FAIL_IF(pipe(write_pipe.fds) == -1);

 pid = fork();
 if (pid == 0) {

  exit(ebb_child(write_pipe, read_pipe));
 }


 rc = setup_child_event(&event, pid);
 if (rc) {
  kill_child_and_wait(pid);
  return rc;
 }


 if (sync_with_child(read_pipe, write_pipe))

  goto wait;


 FAIL_IF(sync_with_child(read_pipe, write_pipe));

wait:

 FAIL_IF(wait_for_child(pid));
 FAIL_IF(event_disable(&event));
 FAIL_IF(event_read(&event));

 event_report(&event);



 return 0;
}
