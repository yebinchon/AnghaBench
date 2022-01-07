
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_6__ ;
typedef struct TYPE_46__ TYPE_5__ ;
typedef struct TYPE_45__ TYPE_4__ ;
typedef struct TYPE_44__ TYPE_3__ ;
typedef struct TYPE_43__ TYPE_38__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_41__ {int oid; } ;
struct TYPE_42__ {int reqs; char* desc; char* dropStmt; struct TYPE_42__* next; TYPE_1__ catalogId; int namespace; int tag; struct TYPE_42__* prev; scalar_t__ hadDumper; } ;
typedef TYPE_2__ TocEntry ;
struct TYPE_47__ {int maxRemoteVersion; scalar_t__ minRemoteVersion; } ;
struct TYPE_43__ {int numWorkers; scalar_t__ verbose; TYPE_3__* ropt; } ;
struct TYPE_46__ {scalar_t__ version; scalar_t__ compression; int noTocComments; TYPE_38__ public; int stage; int * connection; TYPE_2__* toc; int (* PrepParallelRestorePtr ) (TYPE_5__*) ;int * currSchema; TYPE_2__* currentTE; int createDate; scalar_t__ archiveDumpVersion; scalar_t__ archiveRemoteVersion; int * tocsByDumpId; int * PrintTocDataPtr; int (* ReopenPtr ) (TYPE_5__*) ;int * ClonePtr; } ;
struct TYPE_45__ {int data; } ;
struct TYPE_44__ {int dataOnly; scalar_t__ useDB; scalar_t__ compression; scalar_t__ filename; scalar_t__ single_txn; int if_exists; scalar_t__ createDB; scalar_t__ dropSchema; int promptPassword; int username; int pgport; int pghost; int dbname; } ;
typedef TYPE_3__ RestoreOptions ;
typedef int ParallelState ;
typedef TYPE_4__* PQExpBuffer ;
typedef int OutputContext ;
typedef TYPE_5__ ArchiveHandle ;
typedef TYPE_6__ Archive ;


 int Assert (int ) ;
 int CommitTransaction (TYPE_6__*) ;
 int ConnectDatabase (TYPE_6__*,int ,int ,int ,int ,int ) ;
 int DisconnectDatabase (TYPE_38__*) ;
 int DropBlobIfExists (TYPE_5__*,int ) ;
 scalar_t__ K_VERS_1_3 ;
 scalar_t__ K_VERS_1_8 ;
 int ParallelBackupEnd (TYPE_5__*,int *) ;
 int * ParallelBackupStart (TYPE_5__*) ;
 int REQ_DATA ;
 int REQ_SCHEMA ;



 int RestoreOutput (TYPE_5__*,int ) ;
 int STAGE_FINALIZING ;
 int STAGE_INITIALIZING ;
 int STAGE_PROCESSING ;
 int SaveOutput (TYPE_5__*) ;
 int SetOutput (TYPE_5__*,scalar_t__,scalar_t__) ;
 int StartTransaction (TYPE_6__*) ;
 int _becomeOwner (TYPE_5__*,TYPE_2__*) ;
 int _doSetFixedOutputState (TYPE_5__*) ;
 int _selectOutputSchema (TYPE_5__*,int ) ;
 int const _tocEntryRestorePass (TYPE_2__*) ;
 int ahprintf (TYPE_5__*,char*,...) ;
 int appendPQExpBuffer (TYPE_4__*,char*,char*,char*,char*) ;
 int appendPQExpBufferStr (TYPE_4__*,char*) ;
 int buildTocEntryArrays (TYPE_5__*) ;
 TYPE_4__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_4__*) ;
 int dumpTimestamp (TYPE_5__*,char*,int ) ;
 int fatal (char*) ;
 int free (int *) ;
 int pending_list_header_init (TYPE_2__*) ;
 int pg_free (char*) ;
 int pg_log_info (char*,...) ;
 int pg_log_warning (char*,char*) ;
 char* pg_strdup (char*) ;
 int restore_toc_entries_parallel (TYPE_5__*,int *,TYPE_2__*) ;
 int restore_toc_entries_postfork (TYPE_5__*,TYPE_2__*) ;
 int restore_toc_entries_prefork (TYPE_5__*,TYPE_2__*) ;
 int restore_toc_entry (TYPE_5__*,TYPE_2__*,int) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strstr (char*,char*) ;
 int stub1 (TYPE_5__*) ;
 int stub2 (TYPE_5__*) ;
 int time (int *) ;

void
RestoreArchive(Archive *AHX)
{
 ArchiveHandle *AH = (ArchiveHandle *) AHX;
 RestoreOptions *ropt = AH->public.ropt;
 bool parallel_mode;
 TocEntry *te;
 OutputContext sav;

 AH->stage = STAGE_INITIALIZING;




 parallel_mode = (AH->public.numWorkers > 1 && ropt->useDB);
 if (parallel_mode)
 {

  if (AH->ClonePtr == ((void*)0) || AH->ReopenPtr == ((void*)0))
   fatal("parallel restore is not supported with this archive file format");


  if (AH->version < K_VERS_1_8)
   fatal("parallel restore is not supported with archives made by pre-8.0 pg_dump");





  AH->ReopenPtr(AH);
 }





 if (AH->compression != 0 && AH->PrintTocDataPtr != ((void*)0))
 {
  for (te = AH->toc->next; te != AH->toc; te = te->next)
  {
   if (te->hadDumper && (te->reqs & REQ_DATA) != 0)
    fatal("cannot restore from compressed archive (compression not supported in this installation)");
  }
 }






 if (AH->tocsByDumpId == ((void*)0))
  buildTocEntryArrays(AH);




 if (ropt->useDB)
 {
  pg_log_info("connecting to database for restore");
  if (AH->version < K_VERS_1_3)
   fatal("direct database connections are not supported in pre-1.3 archives");






  AHX->minRemoteVersion = 0;
  AHX->maxRemoteVersion = 9999999;

  ConnectDatabase(AHX, ropt->dbname,
      ropt->pghost, ropt->pgport, ropt->username,
      ropt->promptPassword);





  AH->noTocComments = 1;
 }
 if (!ropt->dataOnly)
 {
  int impliedDataOnly = 1;

  for (te = AH->toc->next; te != AH->toc; te = te->next)
  {
   if ((te->reqs & REQ_SCHEMA) != 0)
   {
    impliedDataOnly = 0;
    break;
   }
  }
  if (impliedDataOnly)
  {
   ropt->dataOnly = impliedDataOnly;
   pg_log_info("implied data-only restore");
  }
 }




 sav = SaveOutput(AH);
 if (ropt->filename || ropt->compression)
  SetOutput(AH, ropt->filename, ropt->compression);

 ahprintf(AH, "--\n-- PostgreSQL database dump\n--\n\n");

 if (AH->archiveRemoteVersion)
  ahprintf(AH, "-- Dumped from database version %s\n",
     AH->archiveRemoteVersion);
 if (AH->archiveDumpVersion)
  ahprintf(AH, "-- Dumped by pg_dump version %s\n",
     AH->archiveDumpVersion);

 ahprintf(AH, "\n");

 if (AH->public.verbose)
  dumpTimestamp(AH, "Started on", AH->createDate);

 if (ropt->single_txn)
 {
  if (AH->connection)
   StartTransaction(AHX);
  else
   ahprintf(AH, "BEGIN;\n\n");
 }




 _doSetFixedOutputState(AH);

 AH->stage = STAGE_PROCESSING;




 if (ropt->dropSchema)
 {
  for (te = AH->toc->prev; te != AH->toc; te = te->prev)
  {
   AH->currentTE = te;
   if (ropt->createDB)
   {
    if (strcmp(te->desc, "DATABASE") != 0 &&
     strcmp(te->desc, "DATABASE PROPERTIES") != 0)
     continue;
   }


   if (((te->reqs & (REQ_SCHEMA | REQ_DATA)) != 0) && te->dropStmt)
   {
    pg_log_info("dropping %s %s", te->desc, te->tag);

    _becomeOwner(AH, te);
    _selectOutputSchema(AH, te->namespace);






    if (*te->dropStmt != '\0')
    {
     if (!ropt->if_exists)
     {

      ahprintf(AH, "%s", te->dropStmt);
     }
     else
     {







      if (strncmp(te->desc, "BLOB", 4) == 0)
      {
       DropBlobIfExists(AH, te->catalogId.oid);
      }
      else
      {
       char *dropStmt = pg_strdup(te->dropStmt);
       char *dropStmtOrig = dropStmt;
       PQExpBuffer ftStmt = createPQExpBuffer();





       if (strncmp(dropStmt, "ALTER TABLE", 11) == 0)
       {
        appendPQExpBufferStr(ftStmt,
              "ALTER TABLE IF EXISTS");
        dropStmt = dropStmt + 11;
       }
       if (strcmp(te->desc, "DEFAULT") == 0 ||
        strcmp(te->desc, "DATABASE PROPERTIES") == 0 ||
        strncmp(dropStmt, "CREATE OR REPLACE VIEW", 22) == 0)
        appendPQExpBufferStr(ftStmt, dropStmt);
       else
       {
        char buffer[40];
        char *mark;

        if (strcmp(te->desc, "CONSTRAINT") == 0 ||
         strcmp(te->desc, "CHECK CONSTRAINT") == 0 ||
         strcmp(te->desc, "FK CONSTRAINT") == 0)
         strcpy(buffer, "DROP CONSTRAINT");
        else
         snprintf(buffer, sizeof(buffer), "DROP %s",
            te->desc);

        mark = strstr(dropStmt, buffer);

        if (mark)
        {
         *mark = '\0';
         appendPQExpBuffer(ftStmt, "%s%s IF EXISTS%s",
               dropStmt, buffer,
               mark + strlen(buffer));
        }
        else
        {

         pg_log_warning("could not find where to insert IF EXISTS in statement \"%s\"",
               dropStmtOrig);
         appendPQExpBufferStr(ftStmt, dropStmt);
        }
       }

       ahprintf(AH, "%s", ftStmt->data);

       destroyPQExpBuffer(ftStmt);
       pg_free(dropStmtOrig);
      }
     }
    }
   }
  }
  if (AH->currSchema)
   free(AH->currSchema);
  AH->currSchema = ((void*)0);
 }

 if (parallel_mode)
 {



  ParallelState *pstate;
  TocEntry pending_list;


  if (AH->PrepParallelRestorePtr)
   AH->PrepParallelRestorePtr(AH);

  pending_list_header_init(&pending_list);


  restore_toc_entries_prefork(AH, &pending_list);
  Assert(AH->connection == ((void*)0));


  pstate = ParallelBackupStart(AH);
  restore_toc_entries_parallel(AH, pstate, &pending_list);
  ParallelBackupEnd(AH, pstate);


  restore_toc_entries_postfork(AH, &pending_list);
  Assert(AH->connection != ((void*)0));
 }
 else
 {





  bool haveACL = 0;
  bool haveRefresh = 0;

  for (te = AH->toc->next; te != AH->toc; te = te->next)
  {
   if ((te->reqs & (REQ_SCHEMA | REQ_DATA)) == 0)
    continue;

   switch (_tocEntryRestorePass(te))
   {
    case 129:
     (void) restore_toc_entry(AH, te, 0);
     break;
    case 130:
     haveACL = 1;
     break;
    case 128:
     haveRefresh = 1;
     break;
   }
  }

  if (haveACL)
  {
   for (te = AH->toc->next; te != AH->toc; te = te->next)
   {
    if ((te->reqs & (REQ_SCHEMA | REQ_DATA)) != 0 &&
     _tocEntryRestorePass(te) == 130)
     (void) restore_toc_entry(AH, te, 0);
   }
  }

  if (haveRefresh)
  {
   for (te = AH->toc->next; te != AH->toc; te = te->next)
   {
    if ((te->reqs & (REQ_SCHEMA | REQ_DATA)) != 0 &&
     _tocEntryRestorePass(te) == 128)
     (void) restore_toc_entry(AH, te, 0);
   }
  }
 }

 if (ropt->single_txn)
 {
  if (AH->connection)
   CommitTransaction(AHX);
  else
   ahprintf(AH, "COMMIT;\n\n");
 }

 if (AH->public.verbose)
  dumpTimestamp(AH, "Completed on", time(((void*)0)));

 ahprintf(AH, "--\n-- PostgreSQL database dump complete\n--\n\n");




 AH->stage = STAGE_FINALIZING;

 if (ropt->filename || ropt->compression)
  RestoreOutput(AH, sav);

 if (ropt->useDB)
  DisconnectDatabase(&AH->public);
}
