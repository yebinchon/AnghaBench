
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_22__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


struct TYPE_31__ {TYPE_4__* namespace; } ;
struct TYPE_33__ {TYPE_6__* dataObj; TYPE_5__ dobj; } ;
typedef TYPE_7__ TableInfo ;
struct TYPE_26__ {int dump; } ;
struct TYPE_35__ {char* extconfig; char* extcondition; TYPE_1__ dobj; } ;
struct TYPE_34__ {int data; } ;
struct TYPE_27__ {int dumpId; } ;
struct TYPE_32__ {TYPE_22__ dobj; int filtercond; } ;
struct TYPE_28__ {int oid; } ;
struct TYPE_29__ {int dump; TYPE_2__ catId; } ;
struct TYPE_30__ {TYPE_3__ dobj; } ;
struct TYPE_25__ {int * head; } ;
struct TYPE_24__ {int * dopt; } ;
typedef TYPE_8__* PQExpBuffer ;
typedef int PGresult ;
typedef int Oid ;
typedef TYPE_9__ ExtensionInfo ;
typedef int DumpOptions ;
typedef TYPE_10__ Archive ;


 int DUMP_COMPONENT_DATA ;
 int DUMP_COMPONENT_DEFINITION ;
 int * ExecuteSqlQuery (TYPE_10__*,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int addObjectDependency (TYPE_22__*,int ) ;
 int atooid (char*) ;
 TYPE_8__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_8__*) ;
 TYPE_7__* findTableByOid (int ) ;
 int free (char**) ;
 int makeTableDataInfo (int *,TYPE_7__*) ;
 scalar_t__ parsePGArray (char*,char***,int*) ;
 int pg_strdup (char*) ;
 int printfPQExpBuffer (TYPE_8__*,char*) ;
 TYPE_11__ schema_exclude_oids ;
 scalar_t__ simple_oid_list_member (TYPE_11__*,int ) ;
 scalar_t__ strlen (char*) ;
 TYPE_11__ table_exclude_oids ;
 TYPE_11__ table_include_oids ;

void
processExtensionTables(Archive *fout, ExtensionInfo extinfo[],
        int numExtensions)
{
 DumpOptions *dopt = fout->dopt;
 PQExpBuffer query;
 PGresult *res;
 int ntups,
    i;
 int i_conrelid,
    i_confrelid;


 if (numExtensions == 0)
  return;
 for (i = 0; i < numExtensions; i++)
 {
  ExtensionInfo *curext = &(extinfo[i]);
  char *extconfig = curext->extconfig;
  char *extcondition = curext->extcondition;
  char **extconfigarray = ((void*)0);
  char **extconditionarray = ((void*)0);
  int nconfigitems;
  int nconditionitems;

  if (parsePGArray(extconfig, &extconfigarray, &nconfigitems) &&
   parsePGArray(extcondition, &extconditionarray, &nconditionitems) &&
   nconfigitems == nconditionitems)
  {
   int j;

   for (j = 0; j < nconfigitems; j++)
   {
    TableInfo *configtbl;
    Oid configtbloid = atooid(extconfigarray[j]);
    bool dumpobj =
    curext->dobj.dump & DUMP_COMPONENT_DEFINITION;

    configtbl = findTableByOid(configtbloid);
    if (configtbl == ((void*)0))
     continue;





    if (!(curext->dobj.dump & DUMP_COMPONENT_DEFINITION))
    {

     if (table_include_oids.head != ((void*)0) &&
      simple_oid_list_member(&table_include_oids,
              configtbloid))
      dumpobj = 1;


     if (configtbl->dobj.namespace->dobj.dump &
      DUMP_COMPONENT_DATA)
      dumpobj = 1;
    }


    if (table_exclude_oids.head != ((void*)0) &&
     simple_oid_list_member(&table_exclude_oids,
             configtbloid))
     dumpobj = 0;


    if (simple_oid_list_member(&schema_exclude_oids,
             configtbl->dobj.namespace->dobj.catId.oid))
     dumpobj = 0;

    if (dumpobj)
    {
     makeTableDataInfo(dopt, configtbl);
     if (configtbl->dataObj != ((void*)0))
     {
      if (strlen(extconditionarray[j]) > 0)
       configtbl->dataObj->filtercond = pg_strdup(extconditionarray[j]);
     }
    }
   }
  }
  if (extconfigarray)
   free(extconfigarray);
  if (extconditionarray)
   free(extconditionarray);
 }
 query = createPQExpBuffer();

 printfPQExpBuffer(query,
       "SELECT conrelid, confrelid "
       "FROM pg_constraint "
       "JOIN pg_depend ON (objid = confrelid) "
       "WHERE contype = 'f' "
       "AND refclassid = 'pg_extension'::regclass "
       "AND classid = 'pg_class'::regclass;");

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);
 ntups = PQntuples(res);

 i_conrelid = PQfnumber(res, "conrelid");
 i_confrelid = PQfnumber(res, "confrelid");


 for (i = 0; i < ntups; i++)
 {
  Oid conrelid,
     confrelid;
  TableInfo *reftable,
       *contable;

  conrelid = atooid(PQgetvalue(res, i, i_conrelid));
  confrelid = atooid(PQgetvalue(res, i, i_confrelid));
  contable = findTableByOid(conrelid);
  reftable = findTableByOid(confrelid);

  if (reftable == ((void*)0) ||
   reftable->dataObj == ((void*)0) ||
   contable == ((void*)0) ||
   contable->dataObj == ((void*)0))
   continue;





  addObjectDependency(&contable->dataObj->dobj,
       reftable->dataObj->dobj.dumpId);
 }
 PQclear(res);
 destroyPQExpBuffer(query);
}
