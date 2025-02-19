
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int tz_minuteswest; scalar_t__ tz_dsttime; } ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;


 int errno ;
 int nerrs ;
 int printf (char*,...) ;
 int sys_gettimeofday (struct timeval*,struct timezone*) ;
 int tv_leq (struct timeval*,struct timeval*) ;
 int vdso_gettimeofday (struct timeval*,struct timezone*) ;

__attribute__((used)) static void test_gettimeofday(void)
{
 struct timeval start, vdso, end;
 struct timezone sys_tz, vdso_tz;
 int vdso_ret, end_ret;

 if (!vdso_gettimeofday)
  return;

 printf("[RUN]\tTesting gettimeofday...\n");

 if (sys_gettimeofday(&start, &sys_tz) < 0) {
  printf("[FAIL]\tsys_gettimeofday failed (%d)\n", errno);
  nerrs++;
  return;
 }

 vdso_ret = vdso_gettimeofday(&vdso, &vdso_tz);
 end_ret = sys_gettimeofday(&end, ((void*)0));

 if (vdso_ret != 0 || end_ret != 0) {
  printf("[FAIL]\tvDSO returned %d, syscall errno=%d\n",
         vdso_ret, errno);
  nerrs++;
  return;
 }

 printf("\t%llu.%06ld %llu.%06ld %llu.%06ld\n",
        (unsigned long long)start.tv_sec, start.tv_usec,
        (unsigned long long)vdso.tv_sec, vdso.tv_usec,
        (unsigned long long)end.tv_sec, end.tv_usec);

 if (!tv_leq(&start, &vdso) || !tv_leq(&vdso, &end)) {
  printf("[FAIL]\tTimes are out of sequence\n");
  nerrs++;
 }

 if (sys_tz.tz_minuteswest == vdso_tz.tz_minuteswest &&
     sys_tz.tz_dsttime == vdso_tz.tz_dsttime) {
  printf("[OK]\ttimezones match: minuteswest=%d, dsttime=%d\n",
         sys_tz.tz_minuteswest, sys_tz.tz_dsttime);
 } else {
  printf("[FAIL]\ttimezones do not match\n");
  nerrs++;
 }


 vdso_gettimeofday(&vdso, ((void*)0));
}
