
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int GUC_check_errdetail (char*) ;
 scalar_t__ log_executor_stats ;
 scalar_t__ log_parser_stats ;
 scalar_t__ log_planner_stats ;

__attribute__((used)) static bool
check_log_stats(bool *newval, void **extra, GucSource source)
{
 if (*newval &&
  (log_parser_stats || log_planner_stats || log_executor_stats))
 {
  GUC_check_errdetail("Cannot enable \"log_statement_stats\" when "
       "\"log_parser_stats\", \"log_planner_stats\", "
       "or \"log_executor_stats\" is true.");
  return 0;
 }
 return 1;
}
