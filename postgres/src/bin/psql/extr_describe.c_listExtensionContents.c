
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sverbuf ;
struct TYPE_9__ {int sversion; int quiet; int db; } ;
struct TYPE_8__ {int data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int * PSQLexec (int ) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 scalar_t__ cancel_pressed ;
 int formatPGVersionNumber (int,int,char*,int) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int listOneExtensionContents (char const*,char const*) ;
 int pg_log_error (char*,...) ;
 int printfPQExpBuffer (TYPE_1__*,char*) ;
 int processSQLNamePattern (int ,TYPE_1__*,char const*,int,int,int *,char*,int *,int *) ;
 TYPE_3__ pset ;
 int termPQExpBuffer (TYPE_1__*) ;

bool
listExtensionContents(const char *pattern)
{
 PQExpBufferData buf;
 PGresult *res;
 int i;

 if (pset.sversion < 90100)
 {
  char sverbuf[32];

  pg_log_error("The server (version %s) does not support extensions.",
      formatPGVersionNumber(pset.sversion, 0,
             sverbuf, sizeof(sverbuf)));
  return 1;
 }

 initPQExpBuffer(&buf);
 printfPQExpBuffer(&buf,
       "SELECT e.extname, e.oid\n"
       "FROM pg_catalog.pg_extension e\n");

 processSQLNamePattern(pset.db, &buf, pattern,
        0, 0,
        ((void*)0), "e.extname", ((void*)0),
        ((void*)0));

 appendPQExpBufferStr(&buf, "ORDER BY 1;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 if (PQntuples(res) == 0)
 {
  if (!pset.quiet)
  {
   if (pattern)
    pg_log_error("Did not find any extension named \"%s\".",
        pattern);
   else
    pg_log_error("Did not find any extensions.");
  }
  PQclear(res);
  return 0;
 }

 for (i = 0; i < PQntuples(res); i++)
 {
  const char *extname;
  const char *oid;

  extname = PQgetvalue(res, i, 0);
  oid = PQgetvalue(res, i, 1);

  if (!listOneExtensionContents(extname, oid))
  {
   PQclear(res);
   return 0;
  }
  if (cancel_pressed)
  {
   PQclear(res);
   return 0;
  }
 }

 PQclear(res);
 return 1;
}
