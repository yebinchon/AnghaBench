
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dump; } ;
struct TYPE_6__ {char relkind; TYPE_1__ dobj; } ;
typedef TYPE_2__ TableInfo ;
typedef int DumpOptions ;


 int DUMP_COMPONENT_DATA ;
 int makeTableDataInfo (int *,TYPE_2__*) ;

__attribute__((used)) static void
getTableData(DumpOptions *dopt, TableInfo *tblinfo, int numTables, char relkind)
{
 int i;

 for (i = 0; i < numTables; i++)
 {
  if (tblinfo[i].dobj.dump & DUMP_COMPONENT_DATA &&
   (!relkind || tblinfo[i].relkind == relkind))
   makeTableDataInfo(dopt, &(tblinfo[i]));
 }
}
