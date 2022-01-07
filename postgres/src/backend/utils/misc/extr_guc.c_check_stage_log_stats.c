
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int GUC_check_errdetail (char*) ;
 scalar_t__ log_statement_stats ;

__attribute__((used)) static bool
check_stage_log_stats(bool *newval, void **extra, GucSource source)
{
 if (*newval && log_statement_stats)
 {
  GUC_check_errdetail("Cannot enable parameter when \"log_statement_stats\" is true.");
  return 0;
 }
 return 1;
}
