
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_17__ ;


struct TYPE_21__ {void* oid; void* tableoid; } ;
struct TYPE_18__ {void* name; TYPE_4__* namespace; TYPE_3__ catId; int objType; } ;
struct TYPE_24__ {char tgenabled; int tgisconstraint; int tgdeferrable; int tginitdeferred; int * tgconstrrelname; void* tgconstrrelid; int * tgconstrname; TYPE_17__ dobj; int * tgargs; void* tgnargs; void* tgtype; int * tgfname; int * tgdef; TYPE_7__* tgtable; } ;
typedef TYPE_6__ TriggerInfo ;
struct TYPE_20__ {int oid; } ;
struct TYPE_23__ {int dump; int name; TYPE_4__* namespace; TYPE_2__ catId; } ;
struct TYPE_25__ {int numTriggers; TYPE_5__ dobj; TYPE_6__* triggers; int hastriggers; } ;
typedef TYPE_7__ TableInfo ;
struct TYPE_27__ {int remoteVersion; } ;
struct TYPE_26__ {int data; } ;
struct TYPE_19__ {int name; } ;
struct TYPE_22__ {TYPE_1__ dobj; } ;
typedef TYPE_8__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_9__ Archive ;


 int AssignDumpId (TYPE_17__*) ;
 int DO_TRIGGER ;
 int DUMP_COMPONENT_DEFINITION ;
 int * ExecuteSqlQuery (TYPE_9__*,int ,int ) ;
 void* InvalidOid ;
 scalar_t__ OidIsValid (void*) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 scalar_t__ PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBuffer (TYPE_8__*,char*,int ) ;
 void* atoi (char*) ;
 void* atooid (char*) ;
 TYPE_8__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_8__*) ;
 int fatal (char*,void*,int ,void*) ;
 int pg_log_info (char*,int ,int ) ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (char*) ;
 int resetPQExpBuffer (TYPE_8__*) ;

void
getTriggers(Archive *fout, TableInfo tblinfo[], int numTables)
{
 int i,
    j;
 PQExpBuffer query = createPQExpBuffer();
 PGresult *res;
 TriggerInfo *tginfo;
 int i_tableoid,
    i_oid,
    i_tgname,
    i_tgfname,
    i_tgtype,
    i_tgnargs,
    i_tgargs,
    i_tgisconstraint,
    i_tgconstrname,
    i_tgconstrrelid,
    i_tgconstrrelname,
    i_tgenabled,
    i_tgdeferrable,
    i_tginitdeferred,
    i_tgdef;
 int ntups;

 for (i = 0; i < numTables; i++)
 {
  TableInfo *tbinfo = &tblinfo[i];

  if (!tbinfo->hastriggers ||
   !(tbinfo->dobj.dump & DUMP_COMPONENT_DEFINITION))
   continue;

  pg_log_info("reading triggers for table \"%s.%s\"",
     tbinfo->dobj.namespace->dobj.name,
     tbinfo->dobj.name);

  resetPQExpBuffer(query);
  if (fout->remoteVersion >= 90000)
  {





   appendPQExpBuffer(query,
         "SELECT tgname, "
         "tgfoid::pg_catalog.regproc AS tgfname, "
         "pg_catalog.pg_get_triggerdef(oid, false) AS tgdef, "
         "tgenabled, tableoid, oid "
         "FROM pg_catalog.pg_trigger t "
         "WHERE tgrelid = '%u'::pg_catalog.oid "
         "AND NOT tgisinternal",
         tbinfo->dobj.catId.oid);
  }
  else if (fout->remoteVersion >= 80300)
  {



   appendPQExpBuffer(query,
         "SELECT tgname, "
         "tgfoid::pg_catalog.regproc AS tgfname, "
         "tgtype, tgnargs, tgargs, tgenabled, "
         "tgisconstraint, tgconstrname, tgdeferrable, "
         "tgconstrrelid, tginitdeferred, tableoid, oid, "
         "tgconstrrelid::pg_catalog.regclass AS tgconstrrelname "
         "FROM pg_catalog.pg_trigger t "
         "WHERE tgrelid = '%u'::pg_catalog.oid "
         "AND tgconstraint = 0",
         tbinfo->dobj.catId.oid);
  }
  else
  {





   appendPQExpBuffer(query,
         "SELECT tgname, "
         "tgfoid::pg_catalog.regproc AS tgfname, "
         "tgtype, tgnargs, tgargs, tgenabled, "
         "tgisconstraint, tgconstrname, tgdeferrable, "
         "tgconstrrelid, tginitdeferred, tableoid, oid, "
         "tgconstrrelid::pg_catalog.regclass AS tgconstrrelname "
         "FROM pg_catalog.pg_trigger t "
         "WHERE tgrelid = '%u'::pg_catalog.oid "
         "AND (NOT tgisconstraint "
         " OR NOT EXISTS"
         "  (SELECT 1 FROM pg_catalog.pg_depend d "
         "   JOIN pg_catalog.pg_constraint c ON (d.refclassid = c.tableoid AND d.refobjid = c.oid) "
         "   WHERE d.classid = t.tableoid AND d.objid = t.oid AND d.deptype = 'i' AND c.contype = 'f'))",
         tbinfo->dobj.catId.oid);
  }

  res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

  ntups = PQntuples(res);

  i_tableoid = PQfnumber(res, "tableoid");
  i_oid = PQfnumber(res, "oid");
  i_tgname = PQfnumber(res, "tgname");
  i_tgfname = PQfnumber(res, "tgfname");
  i_tgtype = PQfnumber(res, "tgtype");
  i_tgnargs = PQfnumber(res, "tgnargs");
  i_tgargs = PQfnumber(res, "tgargs");
  i_tgisconstraint = PQfnumber(res, "tgisconstraint");
  i_tgconstrname = PQfnumber(res, "tgconstrname");
  i_tgconstrrelid = PQfnumber(res, "tgconstrrelid");
  i_tgconstrrelname = PQfnumber(res, "tgconstrrelname");
  i_tgenabled = PQfnumber(res, "tgenabled");
  i_tgdeferrable = PQfnumber(res, "tgdeferrable");
  i_tginitdeferred = PQfnumber(res, "tginitdeferred");
  i_tgdef = PQfnumber(res, "tgdef");

  tginfo = (TriggerInfo *) pg_malloc(ntups * sizeof(TriggerInfo));

  tbinfo->numTriggers = ntups;
  tbinfo->triggers = tginfo;

  for (j = 0; j < ntups; j++)
  {
   tginfo[j].dobj.objType = DO_TRIGGER;
   tginfo[j].dobj.catId.tableoid = atooid(PQgetvalue(res, j, i_tableoid));
   tginfo[j].dobj.catId.oid = atooid(PQgetvalue(res, j, i_oid));
   AssignDumpId(&tginfo[j].dobj);
   tginfo[j].dobj.name = pg_strdup(PQgetvalue(res, j, i_tgname));
   tginfo[j].dobj.namespace = tbinfo->dobj.namespace;
   tginfo[j].tgtable = tbinfo;
   tginfo[j].tgenabled = *(PQgetvalue(res, j, i_tgenabled));
   if (i_tgdef >= 0)
   {
    tginfo[j].tgdef = pg_strdup(PQgetvalue(res, j, i_tgdef));


    tginfo[j].tgfname = ((void*)0);
    tginfo[j].tgtype = 0;
    tginfo[j].tgnargs = 0;
    tginfo[j].tgargs = ((void*)0);
    tginfo[j].tgisconstraint = 0;
    tginfo[j].tgdeferrable = 0;
    tginfo[j].tginitdeferred = 0;
    tginfo[j].tgconstrname = ((void*)0);
    tginfo[j].tgconstrrelid = InvalidOid;
    tginfo[j].tgconstrrelname = ((void*)0);
   }
   else
   {
    tginfo[j].tgdef = ((void*)0);

    tginfo[j].tgfname = pg_strdup(PQgetvalue(res, j, i_tgfname));
    tginfo[j].tgtype = atoi(PQgetvalue(res, j, i_tgtype));
    tginfo[j].tgnargs = atoi(PQgetvalue(res, j, i_tgnargs));
    tginfo[j].tgargs = pg_strdup(PQgetvalue(res, j, i_tgargs));
    tginfo[j].tgisconstraint = *(PQgetvalue(res, j, i_tgisconstraint)) == 't';
    tginfo[j].tgdeferrable = *(PQgetvalue(res, j, i_tgdeferrable)) == 't';
    tginfo[j].tginitdeferred = *(PQgetvalue(res, j, i_tginitdeferred)) == 't';

    if (tginfo[j].tgisconstraint)
    {
     tginfo[j].tgconstrname = pg_strdup(PQgetvalue(res, j, i_tgconstrname));
     tginfo[j].tgconstrrelid = atooid(PQgetvalue(res, j, i_tgconstrrelid));
     if (OidIsValid(tginfo[j].tgconstrrelid))
     {
      if (PQgetisnull(res, j, i_tgconstrrelname))
       fatal("query produced null referenced table name for foreign key trigger \"%s\" on table \"%s\" (OID of table: %u)",
          tginfo[j].dobj.name,
          tbinfo->dobj.name,
          tginfo[j].tgconstrrelid);
      tginfo[j].tgconstrrelname = pg_strdup(PQgetvalue(res, j, i_tgconstrrelname));
     }
     else
      tginfo[j].tgconstrrelname = ((void*)0);
    }
    else
    {
     tginfo[j].tgconstrname = ((void*)0);
     tginfo[j].tgconstrrelid = InvalidOid;
     tginfo[j].tgconstrrelname = ((void*)0);
    }
   }
  }

  PQclear(res);
 }

 destroyPQExpBuffer(query);
}
