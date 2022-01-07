
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union pipe {int write_fd; } ;


 char CHILD_TOKEN ;
 int FAIL_IF (int) ;
 int write (int ,char*,int) ;

int notify_parent(union pipe write_pipe)
{
 char c = CHILD_TOKEN;

 FAIL_IF(write(write_pipe.write_fd, &c, 1) != 1);

 return 0;
}
