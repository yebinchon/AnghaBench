
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int default_footer; } ;
struct TYPE_11__ {int translate_header; TYPE_1__ topt; int * footers; int title; int * nullPrint; } ;
typedef TYPE_2__ printQueryOpt ;
struct TYPE_13__ {int logfile; int queryFout; TYPE_2__ popt; } ;
struct TYPE_12__ {int data; } ;
typedef TYPE_3__ PQExpBufferData ;
typedef int PGresult ;


 int PQclear (int *) ;
 int * PSQLexec (int ) ;
 int _ (char*) ;
 int appendPQExpBuffer (TYPE_3__*,int ,char const*,...) ;
 int gettext_noop (char*) ;
 int initPQExpBuffer (TYPE_3__*) ;
 int printQuery (int *,TYPE_2__*,int ,int,int ) ;
 int printfPQExpBuffer (TYPE_3__*,char*,int ,int ,char const*) ;
 TYPE_5__ pset ;
 int termPQExpBuffer (TYPE_3__*) ;

__attribute__((used)) static bool
describeOneTSConfig(const char *oid, const char *nspname, const char *cfgname,
     const char *pnspname, const char *prsname)
{
 PQExpBufferData buf,
    title;
 PGresult *res;
 printQueryOpt myopt = pset.popt;

 initPQExpBuffer(&buf);

 printfPQExpBuffer(&buf,
       "SELECT\n"
       "  ( SELECT t.alias FROM\n"
       "    pg_catalog.ts_token_type(c.cfgparser) AS t\n"
       "    WHERE t.tokid = m.maptokentype ) AS \"%s\",\n"
       "  pg_catalog.btrim(\n"
       "    ARRAY( SELECT mm.mapdict::pg_catalog.regdictionary\n"
       "           FROM pg_catalog.pg_ts_config_map AS mm\n"
       "           WHERE mm.mapcfg = m.mapcfg AND mm.maptokentype = m.maptokentype\n"
       "           ORDER BY mapcfg, maptokentype, mapseqno\n"
       "    ) :: pg_catalog.text,\n"
       "  '{}') AS \"%s\"\n"
       "FROM pg_catalog.pg_ts_config AS c, pg_catalog.pg_ts_config_map AS m\n"
       "WHERE c.oid = '%s' AND m.mapcfg = c.oid\n"
       "GROUP BY m.mapcfg, m.maptokentype, c.cfgparser\n"
       "ORDER BY 1;",
       gettext_noop("Token"),
       gettext_noop("Dictionaries"),
       oid);

 res = PSQLexec(buf.data);
 termPQExpBuffer(&buf);
 if (!res)
  return 0;

 initPQExpBuffer(&title);

 if (nspname)
  appendPQExpBuffer(&title, _("Text search configuration \"%s.%s\""),
        nspname, cfgname);
 else
  appendPQExpBuffer(&title, _("Text search configuration \"%s\""),
        cfgname);

 if (pnspname)
  appendPQExpBuffer(&title, _("\nParser: \"%s.%s\""),
        pnspname, prsname);
 else
  appendPQExpBuffer(&title, _("\nParser: \"%s\""),
        prsname);

 myopt.nullPrint = ((void*)0);
 myopt.title = title.data;
 myopt.footers = ((void*)0);
 myopt.topt.default_footer = 0;
 myopt.translate_header = 1;

 printQuery(res, &myopt, pset.queryFout, 0, pset.logfile);

 termPQExpBuffer(&title);

 PQclear(res);
 return 1;
}
