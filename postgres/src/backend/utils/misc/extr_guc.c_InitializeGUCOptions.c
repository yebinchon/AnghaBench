
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InitializeGUCOptionsFromEnvironment () ;
 int InitializeOneGUCOption (int ) ;
 int PGC_POSTMASTER ;
 int PGC_S_OVERRIDE ;
 int SetConfigOption (char*,char*,int ,int ) ;
 int build_guc_variables () ;
 int guc_dirty ;
 int * guc_variables ;
 int num_guc_variables ;
 int pg_timezone_initialize () ;
 int reporting_enabled ;

void
InitializeGUCOptions(void)
{
 int i;





 pg_timezone_initialize();




 build_guc_variables();





 for (i = 0; i < num_guc_variables; i++)
 {
  InitializeOneGUCOption(guc_variables[i]);
 }

 guc_dirty = 0;

 reporting_enabled = 0;





 SetConfigOption("transaction_isolation", "read committed",
     PGC_POSTMASTER, PGC_S_OVERRIDE);
 SetConfigOption("transaction_read_only", "no",
     PGC_POSTMASTER, PGC_S_OVERRIDE);
 SetConfigOption("transaction_deferrable", "no",
     PGC_POSTMASTER, PGC_S_OVERRIDE);





 InitializeGUCOptionsFromEnvironment();
}
