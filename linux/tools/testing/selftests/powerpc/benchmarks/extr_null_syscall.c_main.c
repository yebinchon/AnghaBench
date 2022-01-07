
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned long long tv_sec; unsigned long long tv_nsec; } ;


 int CLOCK_MONOTONIC ;
 float NR_LOOPS ;
 int clock_gettime (int ,struct timespec*) ;
 int do_null_syscall (float) ;
 int get_proc_frequency () ;
 unsigned long mftb () ;
 int printf (char*,float,float) ;
 float timebase_multiplier ;

int main(void)
{
 unsigned long tb_start, tb_now;
 struct timespec tv_start, tv_now;
 unsigned long long elapsed_ns, elapsed_tb;

 get_proc_frequency();

 clock_gettime(CLOCK_MONOTONIC, &tv_start);
 tb_start = mftb();

 do_null_syscall(NR_LOOPS);

 clock_gettime(CLOCK_MONOTONIC, &tv_now);
 tb_now = mftb();

 elapsed_ns = (tv_now.tv_sec - tv_start.tv_sec) * 1000000000ULL +
   (tv_now.tv_nsec - tv_start.tv_nsec);
 elapsed_tb = tb_now - tb_start;

 printf("%10.2f ns %10.2f cycles\n", (float)elapsed_ns / NR_LOOPS,
   (float)elapsed_tb * timebase_multiplier / NR_LOOPS);

 return 0;
}
