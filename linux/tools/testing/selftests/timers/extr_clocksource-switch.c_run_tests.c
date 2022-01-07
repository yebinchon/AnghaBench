
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;
 int system (char*) ;

int run_tests(int secs)
{
 int ret;
 char buf[255];

 sprintf(buf, "./inconsistency-check -t %i", secs);
 ret = system(buf);
 if (ret)
  return ret;
 ret = system("./nanosleep");
 return ret;
}
