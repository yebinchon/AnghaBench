
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ check; } ;


 int PG_REPORT ;
 int pg_log (int ,char*) ;
 TYPE_1__ user_opts ;

void
output_check_banner(bool live_check)
{
 if (user_opts.check && live_check)
 {
  pg_log(PG_REPORT,
      "Performing Consistency Checks on Old Live Server\n"
      "------------------------------------------------\n");
 }
 else
 {
  pg_log(PG_REPORT,
      "Performing Consistency Checks\n"
      "-----------------------------\n");
 }
}
