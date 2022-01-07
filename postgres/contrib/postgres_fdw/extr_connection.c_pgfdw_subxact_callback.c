
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sql ;
struct TYPE_3__ {int xact_depth; int changing_xact_state; int have_error; int * conn; } ;
typedef scalar_t__ SubXactEvent ;
typedef int SubTransactionId ;
typedef int HASH_SEQ_STATUS ;
typedef TYPE_1__ ConnCacheEntry ;


 int ConnectionHash ;
 int ERROR ;
 int GetCurrentTransactionNestLevel () ;
 scalar_t__ PQTRANS_ACTIVE ;
 scalar_t__ PQtransactionStatus (int *) ;
 scalar_t__ SUBXACT_EVENT_ABORT_SUB ;
 scalar_t__ SUBXACT_EVENT_PRE_COMMIT_SUB ;
 int do_sql_command (int *,char*) ;
 int elog (int ,char*,int) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 scalar_t__ in_error_recursion_trouble () ;
 int pgfdw_cancel_query (int *) ;
 int pgfdw_exec_cleanup_query (int *,char*,int) ;
 int pgfdw_reject_incomplete_xact_state_change (TYPE_1__*) ;
 int snprintf (char*,int,char*,int,...) ;
 int xact_got_connection ;

__attribute__((used)) static void
pgfdw_subxact_callback(SubXactEvent event, SubTransactionId mySubid,
        SubTransactionId parentSubid, void *arg)
{
 HASH_SEQ_STATUS scan;
 ConnCacheEntry *entry;
 int curlevel;


 if (!(event == SUBXACT_EVENT_PRE_COMMIT_SUB ||
    event == SUBXACT_EVENT_ABORT_SUB))
  return;


 if (!xact_got_connection)
  return;





 curlevel = GetCurrentTransactionNestLevel();
 hash_seq_init(&scan, ConnectionHash);
 while ((entry = (ConnCacheEntry *) hash_seq_search(&scan)))
 {
  char sql[100];





  if (entry->conn == ((void*)0) || entry->xact_depth < curlevel)
   continue;

  if (entry->xact_depth > curlevel)
   elog(ERROR, "missed cleaning up remote subtransaction at level %d",
     entry->xact_depth);

  if (event == SUBXACT_EVENT_PRE_COMMIT_SUB)
  {




   pgfdw_reject_incomplete_xact_state_change(entry);


   snprintf(sql, sizeof(sql), "RELEASE SAVEPOINT s%d", curlevel);
   entry->changing_xact_state = 1;
   do_sql_command(entry->conn, sql);
   entry->changing_xact_state = 0;
  }
  else if (in_error_recursion_trouble())
  {




   entry->changing_xact_state = 1;
  }
  else if (!entry->changing_xact_state)
  {
   bool abort_cleanup_failure = 0;


   entry->changing_xact_state = 1;


   entry->have_error = 1;
   if (PQtransactionStatus(entry->conn) == PQTRANS_ACTIVE &&
    !pgfdw_cancel_query(entry->conn))
    abort_cleanup_failure = 1;
   else
   {

    snprintf(sql, sizeof(sql),
       "ROLLBACK TO SAVEPOINT s%d; RELEASE SAVEPOINT s%d",
       curlevel, curlevel);
    if (!pgfdw_exec_cleanup_query(entry->conn, sql, 0))
     abort_cleanup_failure = 1;
   }


   entry->changing_xact_state = abort_cleanup_failure;
  }


  entry->xact_depth--;
 }
}
