
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_29__ ;
typedef struct TYPE_33__ TYPE_1__ ;


typedef int teReqs ;
struct TYPE_33__ {char* desc; int reqs; char* namespace; int tag; scalar_t__ created; int * copyStmt; scalar_t__ hadDumper; int * defn; } ;
typedef TYPE_1__ TocEntry ;
struct TYPE_34__ {scalar_t__ n_errors; TYPE_2__* ropt; } ;
struct TYPE_37__ {scalar_t__ outputKind; TYPE_29__ public; int (* PrintTocDataPtr ) (TYPE_4__*,TYPE_1__*) ;int connection; TYPE_1__* lastErrorTE; TYPE_1__* currentTE; } ;
struct TYPE_36__ {int data; } ;
struct TYPE_35__ {int dbname; scalar_t__ noDataForFailedTables; int dataOnly; int suppressDumpWarnings; } ;
typedef TYPE_2__ RestoreOptions ;
typedef TYPE_3__ PQExpBufferData ;
typedef TYPE_4__ ArchiveHandle ;


 int CommitTransaction (TYPE_29__*) ;
 int EndDBCopyMode (TYPE_29__*,int ) ;
 scalar_t__ OUTPUT_COPYDATA ;
 void* OUTPUT_OTHERDATA ;
 void* OUTPUT_SQLCMDS ;
 int PQserverVersion (int ) ;
 int REQ_DATA ;
 int REQ_SCHEMA ;
 scalar_t__ RestoringToDB (TYPE_4__*) ;
 int StartTransaction (TYPE_29__*) ;
 int WORKER_CREATE_DONE ;
 int WORKER_IGNORED_ERRORS ;
 int WORKER_INHIBIT_DATA ;
 int WORKER_OK ;
 int _becomeOwner (TYPE_4__*,TYPE_1__*) ;
 int _disableTriggersIfNecessary (TYPE_4__*,TYPE_1__*) ;
 int _enableTriggersIfNecessary (TYPE_4__*,TYPE_1__*) ;
 int _printTocEntry (TYPE_4__*,TYPE_1__*,int) ;
 int _reconnectToDB (TYPE_4__*,int ) ;
 int _selectOutputSchema (TYPE_4__*,char*) ;
 int ahprintf (TYPE_4__*,char*,char*,...) ;
 int appendConnStrVal (TYPE_3__*,int ) ;
 int appendPQExpBufferStr (TYPE_3__*,char*) ;
 int fmtQualifiedId (char*,int ) ;
 int inhibit_data_for_failed_table (TYPE_4__*,TYPE_1__*) ;
 int initPQExpBuffer (TYPE_3__*) ;
 int mark_create_done (TYPE_4__*,TYPE_1__*) ;
 int pg_log_info (char*,char*,...) ;
 int pg_log_warning (char*,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (int *) ;
 int stub1 (TYPE_4__*,TYPE_1__*) ;
 int stub2 (TYPE_4__*,TYPE_1__*) ;

__attribute__((used)) static int
restore_toc_entry(ArchiveHandle *AH, TocEntry *te, bool is_parallel)
{
 RestoreOptions *ropt = AH->public.ropt;
 int status = WORKER_OK;
 teReqs reqs;
 bool defnDumped;

 AH->currentTE = te;


 if (!ropt->suppressDumpWarnings && strcmp(te->desc, "WARNING") == 0)
 {
  if (!ropt->dataOnly && te->defn != ((void*)0) && strlen(te->defn) != 0)
   pg_log_warning("warning from original dump file: %s", te->defn);
  else if (te->copyStmt != ((void*)0) && strlen(te->copyStmt) != 0)
   pg_log_warning("warning from original dump file: %s", te->copyStmt);
 }


 reqs = te->reqs;

 defnDumped = 0;




 if ((reqs & REQ_SCHEMA) != 0)
 {

  if (te->namespace)
   pg_log_info("creating %s \"%s.%s\"",
      te->desc, te->namespace, te->tag);
  else
   pg_log_info("creating %s \"%s\"",
      te->desc, te->tag);

  _printTocEntry(AH, te, 0);
  defnDumped = 1;

  if (strcmp(te->desc, "TABLE") == 0)
  {
   if (AH->lastErrorTE == te)
   {
    if (ropt->noDataForFailedTables)
    {
     if (is_parallel)
      status = WORKER_INHIBIT_DATA;
     else
      inhibit_data_for_failed_table(AH, te);
    }
   }
   else
   {







    if (is_parallel)
     status = WORKER_CREATE_DONE;
    else
     mark_create_done(AH, te);
   }
  }






  if (strcmp(te->desc, "DATABASE") == 0 ||
   strcmp(te->desc, "DATABASE PROPERTIES") == 0)
  {
   PQExpBufferData connstr;

   initPQExpBuffer(&connstr);
   appendPQExpBufferStr(&connstr, "dbname=");
   appendConnStrVal(&connstr, te->tag);


   pg_log_info("connecting to new database \"%s\"", te->tag);
   _reconnectToDB(AH, te->tag);
   ropt->dbname = connstr.data;
  }
 }




 if ((reqs & REQ_DATA) != 0)
 {





  if (te->hadDumper)
  {



   if (AH->PrintTocDataPtr != ((void*)0))
   {
    _printTocEntry(AH, te, 1);

    if (strcmp(te->desc, "BLOBS") == 0 ||
     strcmp(te->desc, "BLOB COMMENTS") == 0)
    {
     pg_log_info("processing %s", te->desc);

     _selectOutputSchema(AH, "pg_catalog");


     if (strcmp(te->desc, "BLOB COMMENTS") == 0)
      AH->outputKind = OUTPUT_OTHERDATA;

     AH->PrintTocDataPtr(AH, te);

     AH->outputKind = OUTPUT_SQLCMDS;
    }
    else
    {
     _disableTriggersIfNecessary(AH, te);


     _becomeOwner(AH, te);
     _selectOutputSchema(AH, te->namespace);

     pg_log_info("processing data for table \"%s.%s\"",
        te->namespace, te->tag);
     if (is_parallel && te->created)
     {




      StartTransaction(&AH->public);






      ahprintf(AH, "TRUNCATE TABLE %s%s;\n\n",
         (PQserverVersion(AH->connection) >= 80400 ?
          "ONLY " : ""),
         fmtQualifiedId(te->namespace, te->tag));
     }




     if (te->copyStmt && strlen(te->copyStmt) > 0)
     {
      ahprintf(AH, "%s", te->copyStmt);
      AH->outputKind = OUTPUT_COPYDATA;
     }
     else
      AH->outputKind = OUTPUT_OTHERDATA;

     AH->PrintTocDataPtr(AH, te);




     if (AH->outputKind == OUTPUT_COPYDATA &&
      RestoringToDB(AH))
      EndDBCopyMode(&AH->public, te->tag);
     AH->outputKind = OUTPUT_SQLCMDS;


     if (is_parallel && te->created)
      CommitTransaction(&AH->public);

     _enableTriggersIfNecessary(AH, te);
    }
   }
  }
  else if (!defnDumped)
  {

   pg_log_info("executing %s %s", te->desc, te->tag);
   _printTocEntry(AH, te, 0);
  }
 }

 if (AH->public.n_errors > 0 && status == WORKER_OK)
  status = WORKER_IGNORED_ERRORS;

 return status;
}
