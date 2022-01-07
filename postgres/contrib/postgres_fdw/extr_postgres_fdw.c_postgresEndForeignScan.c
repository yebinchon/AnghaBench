
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fdw_state; } ;
struct TYPE_4__ {int * conn; int cursor_number; scalar_t__ cursor_exists; } ;
typedef TYPE_1__ PgFdwScanState ;
typedef TYPE_2__ ForeignScanState ;


 int ReleaseConnection (int *) ;
 int close_cursor (int *,int ) ;

__attribute__((used)) static void
postgresEndForeignScan(ForeignScanState *node)
{
 PgFdwScanState *fsstate = (PgFdwScanState *) node->fdw_state;


 if (fsstate == ((void*)0))
  return;


 if (fsstate->cursor_exists)
  close_cursor(fsstate->conn, fsstate->cursor_number);


 ReleaseConnection(fsstate->conn);
 fsstate->conn = ((void*)0);


}
