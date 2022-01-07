
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* str; struct TYPE_4__* next; } ;
typedef TYPE_1__ _stringlist ;


 int _ (char*) ;
 scalar_t__ encoding ;
 int header (int ,char const*) ;
 TYPE_1__* loadextension ;
 TYPE_1__* loadlanguage ;
 scalar_t__ nolocale ;
 int psql_command (char const*,char*,char const*,...) ;

__attribute__((used)) static void
create_database(const char *dbname)
{
 _stringlist *sl;





 header(_("creating database \"%s\""), dbname);
 if (encoding)
  psql_command("postgres", "CREATE DATABASE \"%s\" TEMPLATE=template0 ENCODING='%s'%s", dbname, encoding,
      (nolocale) ? " LC_COLLATE='C' LC_CTYPE='C'" : "");
 else
  psql_command("postgres", "CREATE DATABASE \"%s\" TEMPLATE=template0%s", dbname,
      (nolocale) ? " LC_COLLATE='C' LC_CTYPE='C'" : "");
 psql_command(dbname,
     "ALTER DATABASE \"%s\" SET lc_messages TO 'C';"
     "ALTER DATABASE \"%s\" SET lc_monetary TO 'C';"
     "ALTER DATABASE \"%s\" SET lc_numeric TO 'C';"
     "ALTER DATABASE \"%s\" SET lc_time TO 'C';"
     "ALTER DATABASE \"%s\" SET bytea_output TO 'hex';"
     "ALTER DATABASE \"%s\" SET timezone_abbreviations TO 'Default';",
     dbname, dbname, dbname, dbname, dbname, dbname);





 for (sl = loadlanguage; sl != ((void*)0); sl = sl->next)
 {
  header(_("installing %s"), sl->str);
  psql_command(dbname, "CREATE OR REPLACE LANGUAGE \"%s\"", sl->str);
 }





 for (sl = loadextension; sl != ((void*)0); sl = sl->next)
 {
  header(_("installing %s"), sl->str);
  psql_command(dbname, "CREATE EXTENSION IF NOT EXISTS \"%s\"", sl->str);
 }
}
