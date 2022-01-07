
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ commit_lsn; int end_lsn; int committime; } ;
typedef int StringInfo ;
typedef TYPE_1__ LogicalRepCommitData ;


 int AcceptInvalidationMessages () ;
 int Assert (int) ;
 int CommitTransactionCommand () ;
 scalar_t__ IsTransactionState () ;
 int STATE_IDLE ;
 int am_tablesync_worker () ;
 int in_remote_transaction ;
 int logicalrep_read_commit (int ,TYPE_1__*) ;
 int maybe_reread_subscription () ;
 int pgstat_report_activity (int ,int *) ;
 int pgstat_report_stat (int) ;
 int process_syncing_tables (int ) ;
 scalar_t__ remote_final_lsn ;
 int replorigin_session_origin_lsn ;
 int replorigin_session_origin_timestamp ;
 int store_flush_position (int ) ;

__attribute__((used)) static void
apply_handle_commit(StringInfo s)
{
 LogicalRepCommitData commit_data;

 logicalrep_read_commit(s, &commit_data);

 Assert(commit_data.commit_lsn == remote_final_lsn);


 if (IsTransactionState() && !am_tablesync_worker())
 {




  replorigin_session_origin_lsn = commit_data.end_lsn;
  replorigin_session_origin_timestamp = commit_data.committime;

  CommitTransactionCommand();
  pgstat_report_stat(0);

  store_flush_position(commit_data.end_lsn);
 }
 else
 {

  AcceptInvalidationMessages();
  maybe_reread_subscription();
 }

 in_remote_transaction = 0;


 process_syncing_tables(commit_data.end_lsn);

 pgstat_report_activity(STATE_IDLE, ((void*)0));
}
