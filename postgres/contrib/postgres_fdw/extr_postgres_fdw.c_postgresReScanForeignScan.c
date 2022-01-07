
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sql ;
struct TYPE_6__ {int * chgParam; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
struct TYPE_9__ {TYPE_2__ ss; scalar_t__ fdw_state; } ;
struct TYPE_8__ {int cursor_exists; int cursor_number; int fetch_ct_2; int eof_reached; scalar_t__ next_tuple; scalar_t__ num_tuples; int * tuples; int conn; } ;
typedef TYPE_3__ PgFdwScanState ;
typedef int PGresult ;
typedef TYPE_4__ ForeignScanState ;


 int ERROR ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int * pgfdw_exec_query (int ,char*) ;
 int pgfdw_report_error (int ,int *,int ,int,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
postgresReScanForeignScan(ForeignScanState *node)
{
 PgFdwScanState *fsstate = (PgFdwScanState *) node->fdw_state;
 char sql[64];
 PGresult *res;


 if (!fsstate->cursor_exists)
  return;







 if (node->ss.ps.chgParam != ((void*)0))
 {
  fsstate->cursor_exists = 0;
  snprintf(sql, sizeof(sql), "CLOSE c%u",
     fsstate->cursor_number);
 }
 else if (fsstate->fetch_ct_2 > 1)
 {
  snprintf(sql, sizeof(sql), "MOVE BACKWARD ALL IN c%u",
     fsstate->cursor_number);
 }
 else
 {

  fsstate->next_tuple = 0;
  return;
 }





 res = pgfdw_exec_query(fsstate->conn, sql);
 if (PQresultStatus(res) != PGRES_COMMAND_OK)
  pgfdw_report_error(ERROR, res, fsstate->conn, 1, sql);
 PQclear(res);


 fsstate->tuples = ((void*)0);
 fsstate->num_tuples = 0;
 fsstate->next_tuple = 0;
 fsstate->fetch_ct_2 = 0;
 fsstate->eof_reached = 0;
}
