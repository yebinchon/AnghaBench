
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ check; } ;


 int PG_REPORT ;
 int exit (int ) ;
 int pg_log (int ,char*) ;
 int stop_postmaster (int) ;
 TYPE_1__ user_opts ;

void
report_clusters_compatible(void)
{
 if (user_opts.check)
 {
  pg_log(PG_REPORT, "\n*Clusters are compatible*\n");

  stop_postmaster(0);
  exit(0);
 }

 pg_log(PG_REPORT, "\n"
     "If pg_upgrade fails after this point, you must re-initdb the\n"
     "new cluster before continuing.\n");
}
