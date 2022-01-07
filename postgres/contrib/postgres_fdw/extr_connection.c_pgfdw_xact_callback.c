
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int XactEvent ;
struct TYPE_4__ {scalar_t__ xact_depth; int changing_xact_state; int have_prep_stmt; int have_error; int * conn; } ;
typedef int PGresult ;
typedef int HASH_SEQ_STATUS ;
typedef TYPE_1__ ConnCacheEntry ;


 scalar_t__ CONNECTION_OK ;
 int ConnectionHash ;
 int DEBUG3 ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ PQTRANS_ACTIVE ;
 scalar_t__ PQTRANS_IDLE ;
 int PQclear (int *) ;
 int * PQexec (int *,char*) ;
 scalar_t__ PQstatus (int *) ;
 scalar_t__ PQtransactionStatus (int *) ;
 scalar_t__ cursor_number ;
 int disconnect_pg_server (TYPE_1__*) ;
 int do_sql_command (int *,char*) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 int in_error_recursion_trouble () ;
 int pgfdw_cancel_query (int *) ;
 int pgfdw_exec_cleanup_query (int *,char*,int) ;
 int pgfdw_reject_incomplete_xact_state_change (TYPE_1__*) ;
 int xact_got_connection ;

__attribute__((used)) static void
pgfdw_xact_callback(XactEvent event, void *arg)
{
 HASH_SEQ_STATUS scan;
 ConnCacheEntry *entry;


 if (!xact_got_connection)
  return;





 hash_seq_init(&scan, ConnectionHash);
 while ((entry = (ConnCacheEntry *) hash_seq_search(&scan)))
 {
  PGresult *res;


  if (entry->conn == ((void*)0))
   continue;


  if (entry->xact_depth > 0)
  {
   bool abort_cleanup_failure = 0;

   elog(DEBUG3, "closing remote transaction on connection %p",
     entry->conn);

   switch (event)
   {
    case 131:
    case 129:





     pgfdw_reject_incomplete_xact_state_change(entry);


     entry->changing_xact_state = 1;
     do_sql_command(entry->conn, "COMMIT TRANSACTION");
     entry->changing_xact_state = 0;
     if (entry->have_prep_stmt && entry->have_error)
     {
      res = PQexec(entry->conn, "DEALLOCATE ALL");
      PQclear(res);
     }
     entry->have_prep_stmt = 0;
     entry->have_error = 0;
     break;
    case 128:
     ereport(ERROR,
       (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
        errmsg("cannot PREPARE a transaction that has operated on postgres_fdw foreign tables")));
     break;
    case 132:
    case 134:
    case 130:

     elog(ERROR, "missed cleaning up connection during pre-commit");
     break;
    case 133:
    case 135:





     if (in_error_recursion_trouble())
      entry->changing_xact_state = 1;





     if (entry->changing_xact_state)
      break;





     entry->changing_xact_state = 1;


     entry->have_error = 1;
     if (PQtransactionStatus(entry->conn) == PQTRANS_ACTIVE &&
      !pgfdw_cancel_query(entry->conn))
     {

      abort_cleanup_failure = 1;
     }
     else if (!pgfdw_exec_cleanup_query(entry->conn,
                "ABORT TRANSACTION",
                0))
     {

      abort_cleanup_failure = 1;
     }
     else if (entry->have_prep_stmt && entry->have_error &&
        !pgfdw_exec_cleanup_query(entry->conn,
                "DEALLOCATE ALL",
                1))
     {

      abort_cleanup_failure = 1;
     }
     else
     {
      entry->have_prep_stmt = 0;
      entry->have_error = 0;
     }


     entry->changing_xact_state = abort_cleanup_failure;
     break;
   }
  }


  entry->xact_depth = 0;





  if (PQstatus(entry->conn) != CONNECTION_OK ||
   PQtransactionStatus(entry->conn) != PQTRANS_IDLE ||
   entry->changing_xact_state)
  {
   elog(DEBUG3, "discarding connection %p", entry->conn);
   disconnect_pg_server(entry);
  }
 }






 xact_got_connection = 0;


 cursor_number = 0;
}
