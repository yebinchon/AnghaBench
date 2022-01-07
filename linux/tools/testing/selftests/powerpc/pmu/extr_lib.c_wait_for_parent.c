
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union pipe {int read_fd; } ;


 int FAIL_IF (int) ;
 char PARENT_TOKEN ;
 int read (int ,char*,int) ;

int wait_for_parent(union pipe read_pipe)
{
 char c;

 FAIL_IF(read(read_pipe.read_fd, &c, 1) != 1);
 FAIL_IF(c != PARENT_TOKEN);

 return 0;
}
