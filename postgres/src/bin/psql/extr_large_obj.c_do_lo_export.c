
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db; } ;


 int PQerrorMessage (int ) ;
 int ResetCancelConn () ;
 int SetCancelConn () ;
 int atooid (char const*) ;
 int fail_lo_xact (char*,int) ;
 int finish_lo_xact (char*,int) ;
 int lo_export (int ,int ,char const*) ;
 int pg_log_info (char*,int ) ;
 int print_lo_result (char*) ;
 TYPE_1__ pset ;
 int start_lo_xact (char*,int*) ;

bool
do_lo_export(const char *loid_arg, const char *filename_arg)
{
 int status;
 bool own_transaction;

 if (!start_lo_xact("\\lo_export", &own_transaction))
  return 0;

 SetCancelConn();
 status = lo_export(pset.db, atooid(loid_arg), filename_arg);
 ResetCancelConn();


 if (status != 1)
 {
  pg_log_info("%s", PQerrorMessage(pset.db));
  return fail_lo_xact("\\lo_export", own_transaction);
 }

 if (!finish_lo_xact("\\lo_export", own_transaction))
  return 0;

 print_lo_result("lo_export");

 return 1;
}
