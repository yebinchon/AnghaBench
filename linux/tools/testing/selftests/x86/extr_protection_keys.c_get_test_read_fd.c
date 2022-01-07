
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int __save_test_fd (int) ;
 int open (char*,int ) ;

int get_test_read_fd(void)
{
 int test_fd = open("/etc/passwd", O_RDONLY);
 __save_test_fd(test_fd);
 return test_fd;
}
