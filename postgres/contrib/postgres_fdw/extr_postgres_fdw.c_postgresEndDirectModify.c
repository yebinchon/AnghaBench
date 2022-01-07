
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fdw_state; } ;
struct TYPE_4__ {int * conn; scalar_t__ result; } ;
typedef TYPE_1__ PgFdwDirectModifyState ;
typedef TYPE_2__ ForeignScanState ;


 int PQclear (scalar_t__) ;
 int ReleaseConnection (int *) ;

__attribute__((used)) static void
postgresEndDirectModify(ForeignScanState *node)
{
 PgFdwDirectModifyState *dmstate = (PgFdwDirectModifyState *) node->fdw_state;


 if (dmstate == ((void*)0))
  return;


 if (dmstate->result)
  PQclear(dmstate->result);


 ReleaseConnection(dmstate->conn);
 dmstate->conn = ((void*)0);


}
