
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int final_lsn; } ;
typedef int StringInfo ;
typedef TYPE_1__ LogicalRepBeginData ;


 int STATE_RUNNING ;
 int in_remote_transaction ;
 int logicalrep_read_begin (int ,TYPE_1__*) ;
 int pgstat_report_activity (int ,int *) ;
 int remote_final_lsn ;

__attribute__((used)) static void
apply_handle_begin(StringInfo s)
{
 LogicalRepBeginData begin_data;

 logicalrep_read_begin(s, &begin_data);

 remote_final_lsn = begin_data.final_lsn;

 in_remote_transaction = 1;

 pgstat_report_activity(STATE_RUNNING, ((void*)0));
}
