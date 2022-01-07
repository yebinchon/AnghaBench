
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union pipe {int dummy; } pipe ;


 int FAIL_IF (int ) ;
 int notify_parent (union pipe) ;
 int wait_for_parent (union pipe) ;
 int write_pmc1 () ;

__attribute__((used)) static int victim_child(union pipe read_pipe, union pipe write_pipe)
{
 int i;

 FAIL_IF(wait_for_parent(read_pipe));
 FAIL_IF(notify_parent(write_pipe));



 FAIL_IF(wait_for_parent(read_pipe));
 FAIL_IF(notify_parent(write_pipe));


 write_pmc1();


 for (i = 0; i < 1000000; i++) ;

 return 0;
}
