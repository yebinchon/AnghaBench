
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef int Datum ;


 int AccessExclusiveLock ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int NoLock ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_RELATION ;
 int create_toast_table (TYPE_2__*,int ,int ,int ,int ,int) ;
 int elog (int ,char*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int makeRangeVar (int *,char*,int) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_openrv (int ,int ) ;

void
BootstrapToastTable(char *relName, Oid toastOid, Oid toastIndexOid)
{
 Relation rel;

 rel = table_openrv(makeRangeVar(((void*)0), relName, -1), AccessExclusiveLock);

 if (rel->rd_rel->relkind != RELKIND_RELATION &&
  rel->rd_rel->relkind != RELKIND_MATVIEW)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is not a table or materialized view",
      relName)));


 if (!create_toast_table(rel, toastOid, toastIndexOid, (Datum) 0,
       AccessExclusiveLock, 0))
  elog(ERROR, "\"%s\" does not require a toast table",
    relName);

 table_close(rel, NoLock);
}
