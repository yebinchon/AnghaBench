
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sverbuf ;
typedef int printTableOpt ;
typedef int printTableContent ;
struct TYPE_9__ {int topt; } ;
struct TYPE_11__ {int sversion; int logfile; int queryFout; TYPE_1__ popt; int quiet; int db; } ;
struct TYPE_10__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int formatPGVersionNumber (int,int,char*,int) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int pg_log_error (char*,...) ;
 int printTable (int *,int ,int,int ) ;
 int printTableAddCell (int *,char*,int,int) ;
 int printTableAddFooter (int *,int ) ;
 int printTableAddHeader (int *,int ,int,char const) ;
 int printTableCleanup (int *) ;
 int printTableInit (int *,int *,int ,int,int) ;
 int printfPQExpBuffer (TYPE_2__*,char*,...) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,int *,char*,int *,int *) ;
 TYPE_4__ pset ;
 scalar_t__ strcmp (char*,char*) ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
describePublications(const char *pattern)
{
 PQExpBufferData buf;
 int i;
 PGresult *res;
 bool has_pubtruncate;

 if (pset.sversion < 100000)
 {
  char sverbuf[32];

  pg_log_error("The server (version %s) does not support publications.",
      formatPGVersionNumber(pset.sversion, 0,
             sverbuf, sizeof(sverbuf)));
  return 1;
 }

 has_pubtruncate = (pset.sversion >= 110000);

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT oid, pubname,\n"
       "  pg_catalog.pg_get_userbyid(pubowner) AS owner,\n"
       "  puballtables, pubinsert, pubupdate, pubdelete");
 if (has_pubtruncate)
  appendPQExpBufferStr(&buf,
        ", pubtruncate");
 appendPQExpBufferStr(&buf,
       "\nFROM pg_catalog.pg_publication\n");

 processSQLNamePattern(pset.db, &buf, pattern, 0, 0,
        ((void*)0), "pubname", ((void*)0),
        ((void*)0));

 appendPQExpBufferStr(&buf, "ORDER BY 2;");

 res = PSQLexec(buf.data);
 if (!res)
 {
  termPQExpBuffer(&buf);
  return 0;
 }

 if (PQntuples(res) == 0)
 {
  if (!pset.quiet)
  {
   if (pattern)
    pg_log_error("Did not find any publication named \"%s\".",
        pattern);
   else
    pg_log_error("Did not find any publications.");
  }

  termPQExpBuffer(&buf);
  PQclear(res);
  return 0;
 }

 for (i = 0; i < PQntuples(res); i++)
 {
  const char align = 'l';
  int ncols = 5;
  int nrows = 1;
  int tables = 0;
  PGresult *tabres;
  char *pubid = PQgetvalue(res, i, 0);
  char *pubname = PQgetvalue(res, i, 1);
  bool puballtables = strcmp(PQgetvalue(res, i, 3), "t") == 0;
  int j;
  PQExpBufferData title;
  printTableOpt myopt = pset.popt.topt;
  printTableContent cont;

  if (has_pubtruncate)
   ncols++;

  initPQExpBuffer(&title);
  printfPQExpBuffer(&title, _("Publication %s"), pubname);
  printTableInit(&cont, &myopt, title.data, ncols, nrows);

  printTableAddHeader(&cont, gettext_noop("Owner"), 1, align);
  printTableAddHeader(&cont, gettext_noop("All tables"), 1, align);
  printTableAddHeader(&cont, gettext_noop("Inserts"), 1, align);
  printTableAddHeader(&cont, gettext_noop("Updates"), 1, align);
  printTableAddHeader(&cont, gettext_noop("Deletes"), 1, align);
  if (has_pubtruncate)
   printTableAddHeader(&cont, gettext_noop("Truncates"), 1, align);

  printTableAddCell(&cont, PQgetvalue(res, i, 2), 0, 0);
  printTableAddCell(&cont, PQgetvalue(res, i, 3), 0, 0);
  printTableAddCell(&cont, PQgetvalue(res, i, 4), 0, 0);
  printTableAddCell(&cont, PQgetvalue(res, i, 5), 0, 0);
  printTableAddCell(&cont, PQgetvalue(res, i, 6), 0, 0);
  if (has_pubtruncate)
   printTableAddCell(&cont, PQgetvalue(res, i, 7), 0, 0);

  if (!puballtables)
  {
   printfPQExpBuffer(&buf,
         "SELECT n.nspname, c.relname\n"
         "FROM pg_catalog.pg_class c,\n"
         "     pg_catalog.pg_namespace n,\n"
         "     pg_catalog.pg_publication_rel pr\n"
         "WHERE c.relnamespace = n.oid\n"
         "  AND c.oid = pr.prrelid\n"
         "  AND pr.prpubid = '%s'\n"
         "ORDER BY 1,2", pubid);

   tabres = PSQLexec(buf.data);
   if (!tabres)
   {
    printTableCleanup(&cont);
    PQclear(res);
    termPQExpBuffer(&buf);
    termPQExpBuffer(&title);
    return 0;
   }
   else
    tables = PQntuples(tabres);

   if (tables > 0)
    printTableAddFooter(&cont, _("Tables:"));

   for (j = 0; j < tables; j++)
   {
    printfPQExpBuffer(&buf, "    \"%s.%s\"",
          PQgetvalue(tabres, j, 0),
          PQgetvalue(tabres, j, 1));

    printTableAddFooter(&cont, buf.data);
   }
   PQclear(tabres);
  }

  printTable(&cont, pset.queryFout, 0, pset.logfile);
  printTableCleanup(&cont);

  termPQExpBuffer(&title);
 }

 termPQExpBuffer(&buf);
 PQclear(res);

 return 1;
}
