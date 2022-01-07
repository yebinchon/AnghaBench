
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int GUC_check_errdetail (char*,long) ;
 int GUC_check_errhint (char*) ;
 long STACK_DEPTH_SLOP ;
 long get_stack_depth_rlimit () ;

bool
check_max_stack_depth(int *newval, void **extra, GucSource source)
{
 long newval_bytes = *newval * 1024L;
 long stack_rlimit = get_stack_depth_rlimit();

 if (stack_rlimit > 0 && newval_bytes > stack_rlimit - STACK_DEPTH_SLOP)
 {
  GUC_check_errdetail("\"max_stack_depth\" must not exceed %ldkB.",
       (stack_rlimit - STACK_DEPTH_SLOP) / 1024L);
  GUC_check_errhint("Increase the platform's stack depth limit via \"ulimit -s\" or local equivalent.");
  return 0;
 }
 return 1;
}
