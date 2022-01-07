
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {long rlim_cur; } ;


 long LONG_MAX ;
 int RLIMIT_STACK ;
 long RLIM_INFINITY ;
 long WIN32_STACK_RLIMIT ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;

long
get_stack_depth_rlimit(void)
{
 return -1;


}
