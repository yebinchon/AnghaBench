
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_fprog {unsigned short len; struct sock_filter* filter; } ;
struct sock_filter {int dummy; } ;


 scalar_t__ ARRAY_SIZE (struct sock_filter*) ;
 int BPF_K ;
 int BPF_RET ;
 struct sock_filter BPF_STMT (int,int ) ;
 int CLOCK_PROCESS_CPUTIME_ID ;
 int PR_SET_NO_NEW_PRIVS ;
 int PR_SET_SECCOMP ;
 int SECCOMP_MODE_FILTER ;
 int SECCOMP_RET_ALLOW ;
 int assert (int) ;
 unsigned long long calibrate () ;
 long prctl (int ,int,struct sock_fprog*,...) ;
 int printf (char*,...) ;
 unsigned long long strtoull (char*,int *,int ) ;
 unsigned long long timing (int ,unsigned long long) ;

int main(int argc, char *argv[])
{
 struct sock_filter filter[] = {
  BPF_STMT(BPF_RET|BPF_K, SECCOMP_RET_ALLOW),
 };
 struct sock_fprog prog = {
  .len = (unsigned short)ARRAY_SIZE(filter),
  .filter = filter,
 };
 long ret;
 unsigned long long samples;
 unsigned long long native, filtered;

 if (argc > 1)
  samples = strtoull(argv[1], ((void*)0), 0);
 else
  samples = calibrate();

 printf("Benchmarking %llu samples...\n", samples);

 native = timing(CLOCK_PROCESS_CPUTIME_ID, samples) / samples;
 printf("getpid native: %llu ns\n", native);

 ret = prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0);
 assert(ret == 0);

 ret = prctl(PR_SET_SECCOMP, SECCOMP_MODE_FILTER, &prog);
 assert(ret == 0);

 filtered = timing(CLOCK_PROCESS_CPUTIME_ID, samples) / samples;
 printf("getpid RET_ALLOW: %llu ns\n", filtered);

 printf("Estimated seccomp overhead per syscall: %llu ns\n",
  filtered - native);

 if (filtered == native)
  printf("Trying running again with more samples.\n");

 return 0;
}
