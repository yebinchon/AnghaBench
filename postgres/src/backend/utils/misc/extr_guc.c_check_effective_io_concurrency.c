
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 scalar_t__ ComputeIoConcurrency (int,double*) ;
 int ERROR ;
 int GUC_check_errdetail (char*) ;
 scalar_t__ guc_malloc (int ,int) ;
 scalar_t__ rint (double) ;

__attribute__((used)) static bool
check_effective_io_concurrency(int *newval, void **extra, GucSource source)
{
 if (*newval != 0)
 {
  GUC_check_errdetail("effective_io_concurrency must be set to 0 on platforms that lack posix_fadvise().");
  return 0;
 }
 return 1;

}
