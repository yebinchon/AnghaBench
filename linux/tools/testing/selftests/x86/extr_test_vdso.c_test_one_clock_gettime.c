
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;


 int EINVAL ;
 int errno ;
 int nerrs ;
 int printf (char*,...) ;
 int sys_clock_gettime (int,struct timespec*) ;
 int ts_leq (struct timespec*,struct timespec*) ;
 int vdso_clock_gettime (int,struct timespec*) ;

__attribute__((used)) static void test_one_clock_gettime(int clock, const char *name)
{
 struct timespec start, vdso, end;
 int vdso_ret, end_ret;

 printf("[RUN]\tTesting clock_gettime for clock %s (%d)...\n", name, clock);

 if (sys_clock_gettime(clock, &start) < 0) {
  if (errno == EINVAL) {
   vdso_ret = vdso_clock_gettime(clock, &vdso);
   if (vdso_ret == -EINVAL) {
    printf("[OK]\tNo such clock.\n");
   } else {
    printf("[FAIL]\tNo such clock, but __vdso_clock_gettime returned %d\n", vdso_ret);
    nerrs++;
   }
  } else {
   printf("[WARN]\t clock_gettime(%d) syscall returned error %d\n", clock, errno);
  }
  return;
 }

 vdso_ret = vdso_clock_gettime(clock, &vdso);
 end_ret = sys_clock_gettime(clock, &end);

 if (vdso_ret != 0 || end_ret != 0) {
  printf("[FAIL]\tvDSO returned %d, syscall errno=%d\n",
         vdso_ret, errno);
  nerrs++;
  return;
 }

 printf("\t%llu.%09ld %llu.%09ld %llu.%09ld\n",
        (unsigned long long)start.tv_sec, start.tv_nsec,
        (unsigned long long)vdso.tv_sec, vdso.tv_nsec,
        (unsigned long long)end.tv_sec, end.tv_nsec);

 if (!ts_leq(&start, &vdso) || !ts_leq(&vdso, &end)) {
  printf("[FAIL]\tTimes are out of sequence\n");
  nerrs++;
 }
}
