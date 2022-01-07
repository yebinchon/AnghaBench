
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int SIGTERM ;
 int kill (int ,int ) ;
 int wait_for_child (int ) ;

int kill_child_and_wait(pid_t child_pid)
{
 kill(child_pid, SIGTERM);

 return wait_for_child(child_pid);
}
