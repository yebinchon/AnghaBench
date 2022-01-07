
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ verbose; } ;
typedef int ResultRelInfo ;
typedef int ModifyTableState ;
typedef int List ;
typedef TYPE_1__ ExplainState ;


 int ExplainPropertyText (char*,char*,TYPE_1__*) ;
 int FdwModifyPrivateUpdateSql ;
 int list_nth (int *,int ) ;
 char* strVal (int ) ;

__attribute__((used)) static void
postgresExplainForeignModify(ModifyTableState *mtstate,
        ResultRelInfo *rinfo,
        List *fdw_private,
        int subplan_index,
        ExplainState *es)
{
 if (es->verbose)
 {
  char *sql = strVal(list_nth(fdw_private,
            FdwModifyPrivateUpdateSql));

  ExplainPropertyText("Remote SQL", sql, es);
 }
}
