
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union pipe {int dummy; } pipe ;


 int SIGTERM ;
 int SIG_DFL ;
 int notify_parent (union pipe) ;
 int signal (int ,int ) ;
 int wait_for_parent (union pipe) ;

__attribute__((used)) static int eat_cpu_child(union pipe read_pipe, union pipe write_pipe)
{
 volatile int i = 0;





 signal(SIGTERM, SIG_DFL);

 notify_parent(write_pipe);
 wait_for_parent(read_pipe);


 while (1) i++;

 return 0;
}
