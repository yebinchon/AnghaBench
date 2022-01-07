
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int header (int ,char const*) ;
 int psql_command (char*,char*,char const*) ;

__attribute__((used)) static void
drop_database_if_exists(const char *dbname)
{
 header(_("dropping database \"%s\""), dbname);
 psql_command("postgres", "DROP DATABASE IF EXISTS \"%s\"", dbname);
}
