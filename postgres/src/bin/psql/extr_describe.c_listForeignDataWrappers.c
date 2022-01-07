
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int sverbuf ;
struct TYPE_12__ {int translate_header; int title; int * nullPrint; } ;
typedef TYPE_1__ printQueryOpt ;
struct TYPE_14__ {int sversion; int logfile; int queryFout; int db; TYPE_1__ popt; } ;
struct TYPE_13__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int appendPQExpBuffer (TYPE_2__*,char*,int ) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int formatPGVersionNumber (int,int,char*,int) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int pg_log_error (char*,int ) ;
 int printACLColumn (TYPE_2__*,char*) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,int *,char*,int *,int *) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
listForeignDataWrappers(const char *pattern, bool verbose)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;

 if (pset.sversion < 80400)
 {
  char sverbuf[32];

  pg_log_error("The server (version %s) does not support foreign-data wrappers.",
      formatPGVersionNumber(pset.sversion, 0,
             sverbuf, sizeof(sverbuf)));
  return 1;
 }

 initPQExpBuffer(&buf);
 printfPQExpBuffer(&buf,
       "SELECT fdw.fdwname AS \"%s\",\n"
       "  pg_catalog.pg_get_userbyid(fdw.fdwowner) AS \"%s\",\n",
       gettext_noop("Name"),
       gettext_noop("Owner"));
 if (pset.sversion >= 90100)
  appendPQExpBuffer(&buf,
        "  fdw.fdwhandler::pg_catalog.regproc AS \"%s\",\n",
        gettext_noop("Handler"));
 appendPQExpBuffer(&buf,
       "  fdw.fdwvalidator::pg_catalog.regproc AS \"%s\"",
       gettext_noop("Validator"));

 if (verbose)
 {
  appendPQExpBufferStr(&buf, ",\n  ");
  printACLColumn(&buf, "fdwacl");
  appendPQExpBuffer(&buf,
        ",\n CASE WHEN fdwoptions IS NULL THEN '' ELSE "
        "  '(' || pg_catalog.array_to_string(ARRAY(SELECT "
        "  pg_catalog.quote_ident(option_name) ||  ' ' || "
        "  pg_catalog.quote_literal(option_value)  FROM "
        "  pg_catalog.pg_options_to_table(fdwoptions)),  ', ') || ')' "
        "  END AS \"%s\"",
        gettext_noop("FDW options"));

  if (pset.sversion >= 90100)
   appendPQExpBuffer(&buf,
         ",\n  d.description AS \"%s\" ",
         gettext_noop("Description"));
 }

 appendPQExpBufferStr(&buf, "\nFROM pg_catalog.pg_foreign_data_wrapper fdw\n");

 if (verbose && pset.sversion >= 90100)
  appendPQExpBufferStr(&buf,
        "LEFT JOIN pg_catalog.pg_description d\n"
        "       ON d.classoid = fdw.tableoid "
        "AND d.objoid = fdw.oid AND d.objsubid = 0\n");

 processSQLNamePattern(pset.db, &buf, pattern, 0, 0,
        ((void*)0), "fdwname", ((void*)0), ((void*)0));

 appendPQExpBufferStr(&buf, "ORDER BY 1;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of foreign-data wrappers");
 myopt.translate_header = 1;

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
