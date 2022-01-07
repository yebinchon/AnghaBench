
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db; } ;
typedef int Oid ;


 int PQerrorMessage (int ) ;
 int ResetCancelConn () ;
 int SetCancelConn () ;
 int atooid (char const*) ;
 int fail_lo_xact (char*,int) ;
 int finish_lo_xact (char*,int) ;
 int lo_unlink (int ,int ) ;
 int pg_log_info (char*,int ) ;
 int print_lo_result (char*,int ) ;
 TYPE_1__ pset ;
 int start_lo_xact (char*,int*) ;

bool
do_lo_unlink(const char *loid_arg)
{
 int status;
 Oid loid = atooid(loid_arg);
 bool own_transaction;

 if (!start_lo_xact("\\lo_unlink", &own_transaction))
  return 0;

 SetCancelConn();
 status = lo_unlink(pset.db, loid);
 ResetCancelConn();

 if (status == -1)
 {
  pg_log_info("%s", PQerrorMessage(pset.db));
  return fail_lo_xact("\\lo_unlink", own_transaction);
 }

 if (!finish_lo_xact("\\lo_unlink", own_transaction))
  return 0;

 print_lo_result("lo_unlink %u", loid);

 return 1;
}
