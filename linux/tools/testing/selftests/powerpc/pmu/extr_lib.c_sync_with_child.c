
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union pipe {int read_fd; int write_fd; } ;


 char CHILD_TOKEN ;
 int FAIL_IF (int) ;
 char PARENT_TOKEN ;
 int read (int ,char*,int) ;
 int write (int ,char*,int) ;

int sync_with_child(union pipe read_pipe, union pipe write_pipe)
{
 char c = PARENT_TOKEN;

 FAIL_IF(write(write_pipe.write_fd, &c, 1) != 1);
 FAIL_IF(read(read_pipe.read_fd, &c, 1) != 1);
 if (c != CHILD_TOKEN)
  return 1;

 return 0;
}
