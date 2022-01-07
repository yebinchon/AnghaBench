
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {char* use_role; int remoteVersion; int numWorkers; int * sync_snapshot_id; scalar_t__ isStandby; int std_strings; int encoding; TYPE_2__* dopt; } ;
struct TYPE_15__ {int no_synchronized_snapshots; scalar_t__ serializable_deferrable; scalar_t__ enable_row_security; } ;
struct TYPE_14__ {char* data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGconn ;
typedef TYPE_2__ DumpOptions ;
typedef TYPE_3__ Archive ;


 int ALWAYS_SECURE_SEARCH_PATH_SQL ;
 int ExecuteSqlQueryForSingleRow (TYPE_3__*,int ) ;
 int ExecuteSqlStatement (TYPE_3__*,char*) ;
 int * GetConnection (TYPE_3__*) ;
 int PQclear (int ) ;
 int PQclientEncoding (int *) ;
 char* PQparameterStatus (int *,char*) ;
 scalar_t__ PQsetClientEncoding (int *,char const*) ;
 int appendPQExpBuffer (TYPE_1__*,char*,int ) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int appendStringLiteralConn (TYPE_1__*,int *,int *) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int extra_float_digits ;
 int fatal (char*,...) ;
 int fmtId (char*) ;
 int * get_synchronized_snapshot (TYPE_3__*) ;
 scalar_t__ have_extra_float_digits ;
 void* pg_strdup (char const*) ;
 scalar_t__ quote_all_identifiers ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
setup_connection(Archive *AH, const char *dumpencoding,
     const char *dumpsnapshot, char *use_role)
{
 DumpOptions *dopt = AH->dopt;
 PGconn *conn = GetConnection(AH);
 const char *std_strings;

 PQclear(ExecuteSqlQueryForSingleRow(AH, ALWAYS_SECURE_SEARCH_PATH_SQL));




 if (dumpencoding)
 {
  if (PQsetClientEncoding(conn, dumpencoding) < 0)
   fatal("invalid client encoding \"%s\" specified",
      dumpencoding);
 }





 AH->encoding = PQclientEncoding(conn);

 std_strings = PQparameterStatus(conn, "standard_conforming_strings");
 AH->std_strings = (std_strings && strcmp(std_strings, "on") == 0);






 if (!use_role && AH->use_role)
  use_role = AH->use_role;


 if (use_role && AH->remoteVersion >= 80100)
 {
  PQExpBuffer query = createPQExpBuffer();

  appendPQExpBuffer(query, "SET ROLE %s", fmtId(use_role));
  ExecuteSqlStatement(AH, query->data);
  destroyPQExpBuffer(query);


  if (!AH->use_role)
   AH->use_role = pg_strdup(use_role);
 }


 ExecuteSqlStatement(AH, "SET DATESTYLE = ISO");


 if (AH->remoteVersion >= 80400)
  ExecuteSqlStatement(AH, "SET INTERVALSTYLE = POSTGRES");






 if (have_extra_float_digits)
 {
  PQExpBuffer q = createPQExpBuffer();

  appendPQExpBuffer(q, "SET extra_float_digits TO %d",
        extra_float_digits);
  ExecuteSqlStatement(AH, q->data);
  destroyPQExpBuffer(q);
 }
 else if (AH->remoteVersion >= 90000)
  ExecuteSqlStatement(AH, "SET extra_float_digits TO 3");
 else
  ExecuteSqlStatement(AH, "SET extra_float_digits TO 2");





 if (AH->remoteVersion >= 80300)
  ExecuteSqlStatement(AH, "SET synchronize_seqscans TO off");




 ExecuteSqlStatement(AH, "SET statement_timeout = 0");
 if (AH->remoteVersion >= 90300)
  ExecuteSqlStatement(AH, "SET lock_timeout = 0");
 if (AH->remoteVersion >= 90600)
  ExecuteSqlStatement(AH, "SET idle_in_transaction_session_timeout = 0");




 if (quote_all_identifiers && AH->remoteVersion >= 90100)
  ExecuteSqlStatement(AH, "SET quote_all_identifiers = true");




 if (AH->remoteVersion >= 90500)
 {
  if (dopt->enable_row_security)
   ExecuteSqlStatement(AH, "SET row_security = on");
  else
   ExecuteSqlStatement(AH, "SET row_security = off");
 }




 ExecuteSqlStatement(AH, "BEGIN");
 if (AH->remoteVersion >= 90100)
 {
  if (dopt->serializable_deferrable && AH->sync_snapshot_id == ((void*)0))
   ExecuteSqlStatement(AH,
        "SET TRANSACTION ISOLATION LEVEL "
        "SERIALIZABLE, READ ONLY, DEFERRABLE");
  else
   ExecuteSqlStatement(AH,
        "SET TRANSACTION ISOLATION LEVEL "
        "REPEATABLE READ, READ ONLY");
 }
 else
 {
  ExecuteSqlStatement(AH,
       "SET TRANSACTION ISOLATION LEVEL "
       "SERIALIZABLE, READ ONLY");
 }






 if (dumpsnapshot)
  AH->sync_snapshot_id = pg_strdup(dumpsnapshot);

 if (AH->sync_snapshot_id)
 {
  PQExpBuffer query = createPQExpBuffer();

  appendPQExpBufferStr(query, "SET TRANSACTION SNAPSHOT ");
  appendStringLiteralConn(query, AH->sync_snapshot_id, conn);
  ExecuteSqlStatement(AH, query->data);
  destroyPQExpBuffer(query);
 }
 else if (AH->numWorkers > 1 &&
    AH->remoteVersion >= 90200 &&
    !dopt->no_synchronized_snapshots)
 {
  if (AH->isStandby && AH->remoteVersion < 100000)
   fatal("Synchronized snapshots on standby servers are not supported by this server version.\n"
      "Run with --no-synchronized-snapshots instead if you do not need\n"
      "synchronized snapshots.");


  AH->sync_snapshot_id = get_synchronized_snapshot(AH);
 }
}
