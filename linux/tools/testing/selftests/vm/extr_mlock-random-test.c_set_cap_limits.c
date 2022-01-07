
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {void* rlim_max; void* rlim_cur; } ;
typedef void* rlim_t ;
typedef int cap_t ;


 int RLIMIT_MEMLOCK ;
 int cap_init () ;
 scalar_t__ cap_set_proc (int ) ;
 int perror (char*) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;

int set_cap_limits(rlim_t max)
{
 struct rlimit new;
 cap_t cap = cap_init();

 new.rlim_cur = max;
 new.rlim_max = max;
 if (setrlimit(RLIMIT_MEMLOCK, &new)) {
  perror("setrlimit() returns error\n");
  return -1;
 }


 if (cap_set_proc(cap)) {
  perror("cap_set_proc() returns error\n");
  return -2;
 }

 return 0;
}
