
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ len; int data; } ;
struct TYPE_16__ {char* keyword; char* val; } ;
typedef TYPE_1__ PQconninfoOption ;
typedef TYPE_2__ PQExpBufferData ;
typedef TYPE_2__* PQExpBuffer ;
typedef int PGconn ;


 int Assert (int ) ;
 scalar_t__ MINIMUM_VERSION_FOR_RECOVERY_GUC ;
 scalar_t__ PQExpBufferBroken (TYPE_2__*) ;
 scalar_t__ PQExpBufferDataBroken (TYPE_2__) ;
 TYPE_1__* PQconninfo (int *) ;
 int PQconninfoFree (TYPE_1__*) ;
 scalar_t__ PQserverVersion (int *) ;
 int appendConnStrVal (TYPE_2__*,char*) ;
 int appendPQExpBuffer (TYPE_2__*,char*,char*) ;
 int appendPQExpBufferChar (TYPE_2__*,char) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 TYPE_2__* createPQExpBuffer () ;
 char* escape_quotes (int ) ;
 int exit (int) ;
 int free (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int pg_log_error (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int termPQExpBuffer (TYPE_2__*) ;

PQExpBuffer
GenerateRecoveryConfig(PGconn *pgconn, char *replication_slot)
{
 PQconninfoOption *connOptions;
 PQExpBufferData conninfo_buf;
 char *escaped;
 PQExpBuffer contents;

 Assert(pgconn != ((void*)0));

 contents = createPQExpBuffer();
 if (!contents)
 {
  pg_log_error("out of memory");
  exit(1);
 }





 if (PQserverVersion(pgconn) < MINIMUM_VERSION_FOR_RECOVERY_GUC)
  appendPQExpBufferStr(contents, "standby_mode = 'on'\n");

 connOptions = PQconninfo(pgconn);
 if (connOptions == ((void*)0))
 {
  pg_log_error("out of memory");
  exit(1);
 }

 initPQExpBuffer(&conninfo_buf);
 for (PQconninfoOption *opt = connOptions; opt && opt->keyword; opt++)
 {

  if (strcmp(opt->keyword, "replication") == 0 ||
   strcmp(opt->keyword, "dbname") == 0 ||
   strcmp(opt->keyword, "fallback_application_name") == 0 ||
   (opt->val == ((void*)0)) ||
   (opt->val != ((void*)0) && opt->val[0] == '\0'))
   continue;


  if (conninfo_buf.len != 0)
   appendPQExpBufferChar(&conninfo_buf, ' ');





  appendPQExpBuffer(&conninfo_buf, "%s=", opt->keyword);
  appendConnStrVal(&conninfo_buf, opt->val);
 }
 if (PQExpBufferDataBroken(conninfo_buf))
 {
  pg_log_error("out of memory");
  exit(1);
 }






 escaped = escape_quotes(conninfo_buf.data);
 termPQExpBuffer(&conninfo_buf);
 appendPQExpBuffer(contents, "primary_conninfo = '%s'\n", escaped);
 free(escaped);

 if (replication_slot)
 {

  appendPQExpBuffer(contents, "primary_slot_name = '%s'\n",
        replication_slot);
 }

 if (PQExpBufferBroken(contents))
 {
  pg_log_error("out of memory");
  exit(1);
 }

 PQconninfoFree(connOptions);

 return contents;
}
