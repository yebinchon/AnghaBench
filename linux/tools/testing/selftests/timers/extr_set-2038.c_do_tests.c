
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int system (char*) ;

int do_tests(void)
{
 int ret;

 ret = system("date");
 ret = system("./inconsistency-check -c 0 -t 20");
 ret |= system("./nanosleep");
 ret |= system("./nsleep-lat");
 return ret;

}
