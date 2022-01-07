
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int translate_header; int const* translate_columns; int n_translate_columns; int title; int * nullPrint; } ;
typedef TYPE_1__ printQueryOpt ;
struct TYPE_13__ {int logfile; int queryFout; int db; TYPE_1__ popt; } ;
struct TYPE_12__ {int data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int appendPQExpBuffer (TYPE_2__*,char*,int ) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int lengthof (int const*) ;
 int printQuery (int *,TYPE_1__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_2__*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int processSQLNamePattern (int ,TYPE_2__*,char const*,int,int,int *,char*,int *,int *) ;
 TYPE_4__ pset ;
 int termPQExpBuffer (TYPE_2__*) ;

bool
listEventTriggers(const char *pattern, bool verbose)
{
 PQExpBufferData buf;
 PGresult *res;
 printQueryOpt myopt = pset.popt;
 static const bool translate_columns[] =
 {0, 0, 0, 1, 0, 0, 0};

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT evtname as \"%s\", "
       "evtevent as \"%s\", "
       "pg_catalog.pg_get_userbyid(e.evtowner) as \"%s\",\n"
       " case evtenabled when 'O' then '%s'"
       "  when 'R' then '%s'"
       "  when 'A' then '%s'"
       "  when 'D' then '%s' end as \"%s\",\n"
       " e.evtfoid::pg_catalog.regproc as \"%s\", "
       "pg_catalog.array_to_string(array(select x"
       " from pg_catalog.unnest(evttags) as t(x)), ', ') as \"%s\"",
       gettext_noop("Name"),
       gettext_noop("Event"),
       gettext_noop("Owner"),
       gettext_noop("enabled"),
       gettext_noop("replica"),
       gettext_noop("always"),
       gettext_noop("disabled"),
       gettext_noop("Enabled"),
       gettext_noop("Function"),
       gettext_noop("Tags"));
 if (verbose)
  appendPQExpBuffer(&buf,
        ",\npg_catalog.obj_description(e.oid, 'pg_event_trigger') as \"%s\"",
        gettext_noop("Description"));
 appendPQExpBufferStr(&buf,
       "\nFROM pg_catalog.pg_event_trigger e ");

 processSQLNamePattern(pset.db, &buf, pattern, 0, 0,
        ((void*)0), "evtname", ((void*)0), ((void*)0));

 appendPQExpBufferStr(&buf, "ORDER BY 1");

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 myopt.nullPrint = ((void*)0);
 myopt.title = _("List of event triggers");
 myopt.translate_header = 1;
 myopt.translate_columns = translate_columns;
 myopt.n_translate_columns = lengthof(translate_columns);

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 PQclear(res);
 return 1;
}
