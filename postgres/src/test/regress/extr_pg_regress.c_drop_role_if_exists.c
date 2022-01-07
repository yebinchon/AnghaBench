
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int header (int ,char const*) ;
 int psql_command (char*,char*,char const*) ;

__attribute__((used)) static void
drop_role_if_exists(const char *rolename)
{
 header(_("dropping role \"%s\""), rolename);
 psql_command("postgres", "DROP ROLE IF EXISTS \"%s\"", rolename);
}
