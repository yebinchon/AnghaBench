
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int default_footer; } ;
struct TYPE_10__ {int translate_header; int const* translate_columns; scalar_t__ n_translate_columns; TYPE_1__ topt; int * footers; int title; int * nullPrint; } ;
typedef TYPE_2__ printQueryOpt ;
struct TYPE_12__ {int logfile; int queryFout; TYPE_2__ popt; } ;
struct TYPE_11__ {int data; } ;
typedef TYPE_3__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_3__*) ;
 scalar_t__ lengthof (int const*) ;
 int printQuery (int *,TYPE_2__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_3__*,char*,char const*,...) ;
 TYPE_5__ pset ;
 int termPQExpBuffer (TYPE_3__*) ;

__attribute__((used)) static bool
describeOneTSParser(const char *oid, const char *nspname, const char *prsname)
{
 PQExpBufferData buf;
 PGresult *res;
 PQExpBufferData title;
 printQueryOpt myopt = pset.popt;
 static const bool translate_columns[] = {1, 0, 0};

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT '%s' AS \"%s\",\n"
       "   p.prsstart::pg_catalog.regproc AS \"%s\",\n"
       "   pg_catalog.obj_description(p.prsstart, 'pg_proc') as \"%s\"\n"
       " FROM pg_catalog.pg_ts_parser p\n"
       " WHERE p.oid = '%s'\n"
       "UNION ALL\n"
       "SELECT '%s',\n"
       "   p.prstoken::pg_catalog.regproc,\n"
       "   pg_catalog.obj_description(p.prstoken, 'pg_proc')\n"
       " FROM pg_catalog.pg_ts_parser p\n"
       " WHERE p.oid = '%s'\n"
       "UNION ALL\n"
       "SELECT '%s',\n"
       "   p.prsend::pg_catalog.regproc,\n"
       "   pg_catalog.obj_description(p.prsend, 'pg_proc')\n"
       " FROM pg_catalog.pg_ts_parser p\n"
       " WHERE p.oid = '%s'\n"
       "UNION ALL\n"
       "SELECT '%s',\n"
       "   p.prsheadline::pg_catalog.regproc,\n"
       "   pg_catalog.obj_description(p.prsheadline, 'pg_proc')\n"
       " FROM pg_catalog.pg_ts_parser p\n"
       " WHERE p.oid = '%s'\n"
       "UNION ALL\n"
       "SELECT '%s',\n"
       "   p.prslextype::pg_catalog.regproc,\n"
       "   pg_catalog.obj_description(p.prslextype, 'pg_proc')\n"
       " FROM pg_catalog.pg_ts_parser p\n"
       " WHERE p.oid = '%s';",
       gettext_noop("Start parse"),
       gettext_noop("Method"),
       gettext_noop("Function"),
       gettext_noop("Description"),
       oid,
       gettext_noop("Get next token"),
       oid,
       gettext_noop("End parse"),
       oid,
       gettext_noop("Get headline"),
       oid,
       gettext_noop("Get token types"),
       oid);

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 initPQExpBuffer(&title);
 if (nspname)
  printfPQExpBuffer(&title, _("Text search parser \"%s.%s\""),
        nspname, prsname);
 else
  printfPQExpBuffer(&title, _("Text search parser \"%s\""), prsname);
 myopt.title = title.data;
 myopt.footers = ((void*)0);
 myopt.topt.default_footer = 0;
 myopt.translate_header = 1;
 myopt.translate_columns = translate_columns;
 myopt.n_translate_columns = lengthof(translate_columns);

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT t.alias as \"%s\",\n"
       "  t.description as \"%s\"\n"
       "FROM pg_catalog.ts_token_type( '%s'::pg_catalog.oid ) as t\n"
       "ORDER BY 1;",
       gettext_noop("Token name"),
       gettext_noop("Description"),
       oid);

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 if (nspname)
  printfPQExpBuffer(&title, _("Token types for parser \"%s.%s\""),
        nspname, prsname);
 else
  printfPQExpBuffer(&title, _("Token types for parser \"%s\""), prsname);
 myopt.title = title.data;
 myopt.footers = ((void*)0);
 myopt.topt.default_footer = 1;
 myopt.translate_header = 1;
 myopt.translate_columns = ((void*)0);
 myopt.n_translate_columns = 0;

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 termPQExpBuffer(&title);
 PQclear(res);
 return 1;
}
