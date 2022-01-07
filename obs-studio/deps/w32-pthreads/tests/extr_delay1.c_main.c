
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {long member_0; long member_1; } ;


 int assert (int) ;
 scalar_t__ pthread_delay_np (struct timespec*) ;

int
main(int argc, char * argv[])
{
  struct timespec interval = {1L, 500000000L};

  assert(pthread_delay_np(&interval) == 0);

  return 0;
}
