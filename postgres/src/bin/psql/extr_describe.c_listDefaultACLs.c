
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sverbuf ;
struct TYPE_11__ {int translate_header; int const* translate_columns; int n_translate_columns; int title; int * nullPrint; } ;
typedef TYPE_1__ printQueryOpt ;
struct TYPE_13__ {int sversion; int logfile; int queryFout; int db; TYPE_1__ popt; } ;
struct TYPE_12__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;


 int DEFACLOBJ_FUNCTION ;
 int DEFACLOBJ_NAMESPACE ;
 int DEFACLOBJ_RELATION ;
 int DEFACLOBJ_SEQUENCE ;
 int DEFACLOBJ_TYPE ;
 int PQclear (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int formatPGVersionNumber (int,int,char*,int) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int lengthof (int const*) ;
 int pg_log_error (char*,int ) ;
 int printACLColumn (TYPE_2__*,char*) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,...) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,int *,char*,char*,int *) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
listDefaultACLs(const char *pattern)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;
 static const bool translate_columns[] = {0, 0, 1, 0};

 if (pset.sversion < 90000)
 {
  char sverbuf[32];

  pg_log_error("The server (version %s) does not support altering default privileges.",
      formatPGVersionNumber(pset.sversion, 0,
             sverbuf, sizeof(sverbuf)));
  return 1;
 }

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT pg_catalog.pg_get_userbyid(d.defaclrole) AS \"%s\",\n"
       "  n.nspname AS \"%s\",\n"
       "  CASE d.defaclobjtype WHEN '%c' THEN '%s' WHEN '%c' THEN '%s' WHEN '%c' THEN '%s' WHEN '%c' THEN '%s' WHEN '%c' THEN '%s' END AS \"%s\",\n"
       "  ",
       gettext_noop("Owner"),
       gettext_noop("Schema"),
       DEFACLOBJ_RELATION,
       gettext_noop("table"),
       DEFACLOBJ_SEQUENCE,
       gettext_noop("sequence"),
       DEFACLOBJ_FUNCTION,
       gettext_noop("function"),
       DEFACLOBJ_TYPE,
       gettext_noop("type"),
       DEFACLOBJ_NAMESPACE,
       gettext_noop("schema"),
       gettext_noop("Type"));

 printACLColumn(&buf, "d.defaclacl");

 appendPQExpBufferStr(&buf, "\nFROM pg_catalog.pg_default_acl d\n"
       "     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = d.defaclnamespace\n");

 processSQLNamePattern(pset.db, &buf, pattern, 0, 0,
        ((void*)0),
        "n.nspname",
        "pg_catalog.pg_get_userbyid(d.defaclrole)",
        ((void*)0));

 appendPQExpBufferStr(&buf, "ORDER BY 1, 2, 3;");

 res = PSQLexec(buf.data);
 if (!res)
 {
  termPQExpBuffer(&buf);
  return 0;
 }

 myopt.nullPrint = ((void*)0);
 printfPQExpBuffer(&buf, _("Default access privileges"));
 myopt.title = buf.data;
 myopt.translate_header = 1;
 myopt.translate_columns = translate_columns;
 myopt.n_translate_columns = lengthof(translate_columns);

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 termPQExpBuffer(&buf);
 PQclear(res);
 return 1;
}
