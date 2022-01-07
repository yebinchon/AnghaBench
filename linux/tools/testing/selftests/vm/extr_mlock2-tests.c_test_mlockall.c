
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 int MCL_ONFAULT ;
 scalar_t__ mlockall (int) ;
 int munlockall () ;
 int perror (char*) ;

__attribute__((used)) static int test_mlockall(int (test_function)(bool call_mlock))
{
 int ret = 1;

 if (mlockall(MCL_CURRENT | MCL_ONFAULT | MCL_FUTURE)) {
  perror("mlockall");
  return ret;
 }

 ret = test_function(0);
 munlockall();
 return ret;
}
