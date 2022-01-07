
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ verbose; } ;
struct TYPE_12__ {int * fdw_private; } ;
struct TYPE_9__ {scalar_t__ plan; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;
struct TYPE_11__ {TYPE_2__ ss; } ;
typedef int List ;
typedef TYPE_3__ ForeignScanState ;
typedef TYPE_4__ ForeignScan ;
typedef TYPE_5__ ExplainState ;


 int ExplainPropertyText (char*,char*,TYPE_5__*) ;
 scalar_t__ FdwScanPrivateRelations ;
 scalar_t__ FdwScanPrivateSelectSql ;
 scalar_t__ list_length (int *) ;
 int list_nth (int *,scalar_t__) ;
 char* strVal (int ) ;

__attribute__((used)) static void
postgresExplainForeignScan(ForeignScanState *node, ExplainState *es)
{
 List *fdw_private;
 char *sql;
 char *relations;

 fdw_private = ((ForeignScan *) node->ss.ps.plan)->fdw_private;





 if (list_length(fdw_private) > FdwScanPrivateRelations)
 {
  relations = strVal(list_nth(fdw_private, FdwScanPrivateRelations));
  ExplainPropertyText("Relations", relations, es);
 }




 if (es->verbose)
 {
  sql = strVal(list_nth(fdw_private, FdwScanPrivateSelectSql));
  ExplainPropertyText("Remote SQL", sql, es);
 }
}
