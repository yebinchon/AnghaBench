
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int oid; } ;
struct TYPE_13__ {int dumpId; int namespace; int name; TYPE_2__ catId; } ;
struct TYPE_14__ {scalar_t__ relkind; scalar_t__ relpersistence; TYPE_5__* dataObj; TYPE_3__ dobj; } ;
typedef TYPE_4__ TableInfo ;
struct TYPE_11__ {int oid; scalar_t__ tableoid; } ;
struct TYPE_17__ {int namespace; int name; TYPE_1__ catId; int objType; } ;
struct TYPE_15__ {TYPE_9__ dobj; int * filtercond; TYPE_4__* tdtable; } ;
typedef TYPE_5__ TableDataInfo ;
struct TYPE_16__ {scalar_t__ no_unlogged_table_data; } ;
typedef TYPE_6__ DumpOptions ;


 int AssignDumpId (TYPE_9__*) ;
 int DO_REFRESH_MATVIEW ;
 int DO_SEQUENCE_SET ;
 int DO_TABLE_DATA ;
 scalar_t__ RELKIND_FOREIGN_TABLE ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_SEQUENCE ;
 scalar_t__ RELKIND_VIEW ;
 scalar_t__ RELPERSISTENCE_UNLOGGED ;
 int addObjectDependency (TYPE_9__*,int ) ;
 scalar_t__ pg_malloc (int) ;
 scalar_t__ simple_oid_list_member (int *,int ) ;
 int tabledata_exclude_oids ;

__attribute__((used)) static void
makeTableDataInfo(DumpOptions *dopt, TableInfo *tbinfo)
{
 TableDataInfo *tdinfo;





 if (tbinfo->dataObj != ((void*)0))
  return;


 if (tbinfo->relkind == RELKIND_VIEW)
  return;

 if (tbinfo->relkind == RELKIND_FOREIGN_TABLE)
  return;

 if (tbinfo->relkind == RELKIND_PARTITIONED_TABLE)
  return;


 if (tbinfo->relpersistence == RELPERSISTENCE_UNLOGGED &&
  dopt->no_unlogged_table_data)
  return;


 if (simple_oid_list_member(&tabledata_exclude_oids,
          tbinfo->dobj.catId.oid))
  return;


 tdinfo = (TableDataInfo *) pg_malloc(sizeof(TableDataInfo));

 if (tbinfo->relkind == RELKIND_MATVIEW)
  tdinfo->dobj.objType = DO_REFRESH_MATVIEW;
 else if (tbinfo->relkind == RELKIND_SEQUENCE)
  tdinfo->dobj.objType = DO_SEQUENCE_SET;
 else
  tdinfo->dobj.objType = DO_TABLE_DATA;





 tdinfo->dobj.catId.tableoid = 0;
 tdinfo->dobj.catId.oid = tbinfo->dobj.catId.oid;
 AssignDumpId(&tdinfo->dobj);
 tdinfo->dobj.name = tbinfo->dobj.name;
 tdinfo->dobj.namespace = tbinfo->dobj.namespace;
 tdinfo->tdtable = tbinfo;
 tdinfo->filtercond = ((void*)0);
 addObjectDependency(&tdinfo->dobj, tbinfo->dobj.dumpId);

 tbinfo->dataObj = tdinfo;
}
