
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sversion; } ;
typedef int PQExpBuffer ;


 int appendPQExpBuffer (int ,char*,char const*,int ) ;
 int gettext_noop (char*) ;
 TYPE_1__ pset ;

__attribute__((used)) static void
printACLColumn(PQExpBuffer buf, const char *colname)
{
 if (pset.sversion >= 80100)
  appendPQExpBuffer(buf,
        "pg_catalog.array_to_string(%s, E'\\n') AS \"%s\"",
        colname, gettext_noop("Access privileges"));
 else
  appendPQExpBuffer(buf,
        "pg_catalog.array_to_string(%s, '\\n') AS \"%s\"",
        colname, gettext_noop("Access privileges"));
}
