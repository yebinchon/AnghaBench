
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; int rlim_max; } ;
typedef int rlim_t ;


 int RLIMIT_NOFILE ;
 int getrlimit (int ,struct rlimit*) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;

__attribute__((used)) static rlim_t max_openfds(void)
{
 struct rlimit rl;
 rlim_t limit = getrlimit(RLIMIT_NOFILE, &rl);

 if (limit != 0)
  return 32;

 limit = rl.rlim_cur;
 rl.rlim_cur = rl.rlim_max;


 if (setrlimit(RLIMIT_NOFILE, &rl) == 0) {
  limit = rl.rlim_max - (rl.rlim_max >> 2);




  return limit > 20480 ? 20480 : limit;
 }

 return limit;
}
