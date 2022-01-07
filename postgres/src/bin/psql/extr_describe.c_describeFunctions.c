
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int sverbuf ;
struct TYPE_12__ {int translate_header; int const* translate_columns; void* n_translate_columns; int title; int * nullPrint; } ;
typedef TYPE_1__ printQueryOpt ;
struct TYPE_14__ {int sversion; int logfile; int queryFout; int db; TYPE_1__ popt; } ;
struct TYPE_13__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int appendPQExpBuffer (TYPE_2__*,char*,int ,int ,int ,...) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int formatPGVersionNumber (int,int,char*,int) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 void* lengthof (int const*) ;
 int pg_log_error (char*,...) ;
 int printACLColumn (TYPE_2__*,char*) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,char*,char*,int *,char*) ;
 TYPE_4__ pset ;
 int * strchr (char const*,char) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strspn (char const*,char*) ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
describeFunctions(const char *functypes, const char *pattern, bool verbose, bool showSystem)
{
 bool showAggregate = strchr(functypes, 'a') != ((void*)0);
 bool showNormal = strchr(functypes, 'n') != ((void*)0);
 bool showProcedure = strchr(functypes, 'p') != ((void*)0);
 bool showTrigger = strchr(functypes, 't') != ((void*)0);
 bool showWindow = strchr(functypes, 'w') != ((void*)0);
 bool have_where;
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;
 static const bool translate_columns[] = {0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0};


 static const bool translate_columns_pre_96[] = {0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0};

 if (strlen(functypes) != strspn(functypes, "anptwS+"))
 {
  pg_log_error("\\df only takes [anptwS+] as options");
  return 1;
 }

 if (showProcedure && pset.sversion < 110000)
 {
  char sverbuf[32];

  pg_log_error("\\df does not take a \"%c\" option with server version %s",
      'p',
      formatPGVersionNumber(pset.sversion, 0,
             sverbuf, sizeof(sverbuf)));
  return 1;
 }

 if (showWindow && pset.sversion < 80400)
 {
  char sverbuf[32];

  pg_log_error("\\df does not take a \"%c\" option with server version %s",
      'w',
      formatPGVersionNumber(pset.sversion, 0,
             sverbuf, sizeof(sverbuf)));
  return 1;
 }

 if (!showAggregate && !showNormal && !showProcedure && !showTrigger && !showWindow)
 {
  showAggregate = showNormal = showTrigger = 1;
  if (pset.sversion >= 110000)
   showProcedure = 1;
  if (pset.sversion >= 80400)
   showWindow = 1;
 }

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT n.nspname as \"%s\",\n"
       "  p.proname as \"%s\",\n",
       gettext_noop("Schema"),
       gettext_noop("Name"));

 if (pset.sversion >= 110000)
  appendPQExpBuffer(&buf,
        "  pg_catalog.pg_get_function_result(p.oid) as \"%s\",\n"
        "  pg_catalog.pg_get_function_arguments(p.oid) as \"%s\",\n"
        " CASE p.prokind\n"
        "  WHEN 'a' THEN '%s'\n"
        "  WHEN 'w' THEN '%s'\n"
        "  WHEN 'p' THEN '%s'\n"
        "  ELSE '%s'\n"
        " END as \"%s\"",
        gettext_noop("Result data type"),
        gettext_noop("Argument data types"),

        gettext_noop("agg"),
        gettext_noop("window"),
        gettext_noop("proc"),
        gettext_noop("func"),
        gettext_noop("Type"));
 else if (pset.sversion >= 80400)
  appendPQExpBuffer(&buf,
        "  pg_catalog.pg_get_function_result(p.oid) as \"%s\",\n"
        "  pg_catalog.pg_get_function_arguments(p.oid) as \"%s\",\n"
        " CASE\n"
        "  WHEN p.proisagg THEN '%s'\n"
        "  WHEN p.proiswindow THEN '%s'\n"
        "  WHEN p.prorettype = 'pg_catalog.trigger'::pg_catalog.regtype THEN '%s'\n"
        "  ELSE '%s'\n"
        " END as \"%s\"",
        gettext_noop("Result data type"),
        gettext_noop("Argument data types"),

        gettext_noop("agg"),
        gettext_noop("window"),
        gettext_noop("trigger"),
        gettext_noop("func"),
        gettext_noop("Type"));
 else if (pset.sversion >= 80100)
  appendPQExpBuffer(&buf,
        "  CASE WHEN p.proretset THEN 'SETOF ' ELSE '' END ||\n"
        "  pg_catalog.format_type(p.prorettype, NULL) as \"%s\",\n"
        "  CASE WHEN proallargtypes IS NOT NULL THEN\n"
        "    pg_catalog.array_to_string(ARRAY(\n"
        "      SELECT\n"
        "        CASE\n"
        "          WHEN p.proargmodes[s.i] = 'i' THEN ''\n"
        "          WHEN p.proargmodes[s.i] = 'o' THEN 'OUT '\n"
        "          WHEN p.proargmodes[s.i] = 'b' THEN 'INOUT '\n"
        "          WHEN p.proargmodes[s.i] = 'v' THEN 'VARIADIC '\n"
        "        END ||\n"
        "        CASE\n"
        "          WHEN COALESCE(p.proargnames[s.i], '') = '' THEN ''\n"
        "          ELSE p.proargnames[s.i] || ' '\n"
        "        END ||\n"
        "        pg_catalog.format_type(p.proallargtypes[s.i], NULL)\n"
        "      FROM\n"
        "        pg_catalog.generate_series(1, pg_catalog.array_upper(p.proallargtypes, 1)) AS s(i)\n"
        "    ), ', ')\n"
        "  ELSE\n"
        "    pg_catalog.array_to_string(ARRAY(\n"
        "      SELECT\n"
        "        CASE\n"
        "          WHEN COALESCE(p.proargnames[s.i+1], '') = '' THEN ''\n"
        "          ELSE p.proargnames[s.i+1] || ' '\n"
        "          END ||\n"
        "        pg_catalog.format_type(p.proargtypes[s.i], NULL)\n"
        "      FROM\n"
        "        pg_catalog.generate_series(0, pg_catalog.array_upper(p.proargtypes, 1)) AS s(i)\n"
        "    ), ', ')\n"
        "  END AS \"%s\",\n"
        "  CASE\n"
        "    WHEN p.proisagg THEN '%s'\n"
        "    WHEN p.prorettype = 'pg_catalog.trigger'::pg_catalog.regtype THEN '%s'\n"
        "    ELSE '%s'\n"
        "  END AS \"%s\"",
        gettext_noop("Result data type"),
        gettext_noop("Argument data types"),

        gettext_noop("agg"),
        gettext_noop("trigger"),
        gettext_noop("func"),
        gettext_noop("Type"));
 else
  appendPQExpBuffer(&buf,
        "  CASE WHEN p.proretset THEN 'SETOF ' ELSE '' END ||\n"
        "  pg_catalog.format_type(p.prorettype, NULL) as \"%s\",\n"
        "  pg_catalog.oidvectortypes(p.proargtypes) as \"%s\",\n"
        "  CASE\n"
        "    WHEN p.proisagg THEN '%s'\n"
        "    WHEN p.prorettype = 'pg_catalog.trigger'::pg_catalog.regtype THEN '%s'\n"
        "    ELSE '%s'\n"
        "  END AS \"%s\"",
        gettext_noop("Result data type"),
        gettext_noop("Argument data types"),

        gettext_noop("agg"),
        gettext_noop("trigger"),
        gettext_noop("func"),
        gettext_noop("Type"));

 if (verbose)
 {
  appendPQExpBuffer(&buf,
        ",\n CASE\n"
        "  WHEN p.provolatile = 'i' THEN '%s'\n"
        "  WHEN p.provolatile = 's' THEN '%s'\n"
        "  WHEN p.provolatile = 'v' THEN '%s'\n"
        " END as \"%s\"",
        gettext_noop("immutable"),
        gettext_noop("stable"),
        gettext_noop("volatile"),
        gettext_noop("Volatility"));
  if (pset.sversion >= 90600)
   appendPQExpBuffer(&buf,
         ",\n CASE\n"
         "  WHEN p.proparallel = 'r' THEN '%s'\n"
         "  WHEN p.proparallel = 's' THEN '%s'\n"
         "  WHEN p.proparallel = 'u' THEN '%s'\n"
         " END as \"%s\"",
         gettext_noop("restricted"),
         gettext_noop("safe"),
         gettext_noop("unsafe"),
         gettext_noop("Parallel"));
  appendPQExpBuffer(&buf,
        ",\n pg_catalog.pg_get_userbyid(p.proowner) as \"%s\""
        ",\n CASE WHEN prosecdef THEN '%s' ELSE '%s' END AS \"%s\"",
        gettext_noop("Owner"),
        gettext_noop("definer"),
        gettext_noop("invoker"),
        gettext_noop("Security"));
  appendPQExpBufferStr(&buf, ",\n ");
  printACLColumn(&buf, "p.proacl");
  appendPQExpBuffer(&buf,
        ",\n l.lanname as \"%s\""
        ",\n p.prosrc as \"%s\""
        ",\n pg_catalog.obj_description(p.oid, 'pg_proc') as \"%s\"",
        gettext_noop("Language"),
        gettext_noop("Source code"),
        gettext_noop("Description"));
 }

 appendPQExpBufferStr(&buf,
       "\nFROM pg_catalog.pg_proc p"
       "\n     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = p.pronamespace\n");

 if (verbose)
  appendPQExpBufferStr(&buf,
        "     LEFT JOIN pg_catalog.pg_language l ON l.oid = p.prolang\n");

 have_where = 0;


 if (showNormal && showAggregate && showProcedure && showTrigger && showWindow)
                    ;
 else if (showNormal)
 {
  if (!showAggregate)
  {
   if (have_where)
    appendPQExpBufferStr(&buf, "      AND ");
   else
   {
    appendPQExpBufferStr(&buf, "WHERE ");
    have_where = 1;
   }
   if (pset.sversion >= 110000)
    appendPQExpBufferStr(&buf, "p.prokind <> 'a'\n");
   else
    appendPQExpBufferStr(&buf, "NOT p.proisagg\n");
  }
  if (!showProcedure && pset.sversion >= 110000)
  {
   if (have_where)
    appendPQExpBufferStr(&buf, "      AND ");
   else
   {
    appendPQExpBufferStr(&buf, "WHERE ");
    have_where = 1;
   }
   appendPQExpBufferStr(&buf, "p.prokind <> 'p'\n");
  }
  if (!showTrigger)
  {
   if (have_where)
    appendPQExpBufferStr(&buf, "      AND ");
   else
   {
    appendPQExpBufferStr(&buf, "WHERE ");
    have_where = 1;
   }
   appendPQExpBufferStr(&buf, "p.prorettype <> 'pg_catalog.trigger'::pg_catalog.regtype\n");
  }
  if (!showWindow && pset.sversion >= 80400)
  {
   if (have_where)
    appendPQExpBufferStr(&buf, "      AND ");
   else
   {
    appendPQExpBufferStr(&buf, "WHERE ");
    have_where = 1;
   }
   if (pset.sversion >= 110000)
    appendPQExpBufferStr(&buf, "p.prokind <> 'w'\n");
   else
    appendPQExpBufferStr(&buf, "NOT p.proiswindow\n");
  }
 }
 else
 {
  bool needs_or = 0;

  appendPQExpBufferStr(&buf, "WHERE (\n       ");
  have_where = 1;

  if (showAggregate)
  {
   if (pset.sversion >= 110000)
    appendPQExpBufferStr(&buf, "p.prokind = 'a'\n");
   else
    appendPQExpBufferStr(&buf, "p.proisagg\n");
   needs_or = 1;
  }
  if (showTrigger)
  {
   if (needs_or)
    appendPQExpBufferStr(&buf, "       OR ");
   appendPQExpBufferStr(&buf,
         "p.prorettype = 'pg_catalog.trigger'::pg_catalog.regtype\n");
   needs_or = 1;
  }
  if (showProcedure)
  {
   if (needs_or)
    appendPQExpBufferStr(&buf, "       OR ");
   appendPQExpBufferStr(&buf, "p.prokind = 'p'\n");
   needs_or = 1;
  }
  if (showWindow)
  {
   if (needs_or)
    appendPQExpBufferStr(&buf, "       OR ");
   if (pset.sversion >= 110000)
    appendPQExpBufferStr(&buf, "p.prokind = 'w'\n");
   else
    appendPQExpBufferStr(&buf, "p.proiswindow\n");
   needs_or = 1;
  }
  appendPQExpBufferStr(&buf, "      )\n");
 }

 processSQLNamePattern(pset.db, &buf, pattern, have_where, 0,
        "n.nspname", "p.proname", ((void*)0),
        "pg_catalog.pg_function_is_visible(p.oid)");

 if (!showSystem && !pattern)
  appendPQExpBufferStr(&buf, "      AND n.nspname <> 'pg_catalog'\n"
        "      AND n.nspname <> 'information_schema'\n");

 appendPQExpBufferStr(&buf, "ORDER BY 1, 2, 4;");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of functions");
 myopt.translate_header = 1;
 if (pset.sversion >= 90600)
 {
  myopt.translate_columns = translate_columns;
  myopt.n_translate_columns = lengthof(translate_columns);
 }
 else
 {
  myopt.translate_columns = translate_columns_pre_96;
  myopt.n_translate_columns = lengthof(translate_columns_pre_96);
 }

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
