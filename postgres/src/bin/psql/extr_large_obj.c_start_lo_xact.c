
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db; } ;
typedef int PGresult ;
typedef int PGTransactionStatusType ;





 int PQclear (int *) ;
 int PQtransactionStatus (int ) ;
 int * PSQLexec (char*) ;
 int pg_log_error (char*,char const*) ;
 TYPE_1__ pset ;

__attribute__((used)) static bool
start_lo_xact(const char *operation, bool *own_transaction)
{
 PGTransactionStatusType tstatus;
 PGresult *res;

 *own_transaction = 0;

 if (!pset.db)
 {
  pg_log_error("%s: not connected to a database", operation);
  return 0;
 }

 tstatus = PQtransactionStatus(pset.db);

 switch (tstatus)
 {
  case 130:

   if (!(res = PSQLexec("BEGIN")))
    return 0;
   PQclear(res);
   *own_transaction = 1;
   break;
  case 128:

   break;
  case 129:
   pg_log_error("%s: current transaction is aborted", operation);
   return 0;
  default:
   pg_log_error("%s: unknown transaction status", operation);
   return 0;
 }

 return 1;
}
