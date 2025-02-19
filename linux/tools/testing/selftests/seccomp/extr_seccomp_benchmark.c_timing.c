
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned long long tv_sec; scalar_t__ tv_nsec; } ;
typedef scalar_t__ pid_t ;
typedef int clockid_t ;


 int __NR_getpid ;
 int assert (int) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 scalar_t__ getpid () ;
 int printf (char*,unsigned long long,scalar_t__,unsigned long long,scalar_t__,unsigned long long) ;
 scalar_t__ syscall (int ) ;

unsigned long long timing(clockid_t clk_id, unsigned long long samples)
{
 pid_t pid, ret;
 unsigned long long i;
 struct timespec start, finish;

 pid = getpid();
 assert(clock_gettime(clk_id, &start) == 0);
 for (i = 0; i < samples; i++) {
  ret = syscall(__NR_getpid);
  assert(pid == ret);
 }
 assert(clock_gettime(clk_id, &finish) == 0);

 i = finish.tv_sec - start.tv_sec;
 i *= 1000000000;
 i += finish.tv_nsec - start.tv_nsec;

 printf("%lu.%09lu - %lu.%09lu = %llu\n",
  finish.tv_sec, finish.tv_nsec,
  start.tv_sec, start.tv_nsec,
  i);

 return i;
}
