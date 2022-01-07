
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int str; struct TYPE_3__* next; } ;
typedef TYPE_1__ _stringlist ;


 int _ (char*) ;
 int header (int ,char const*) ;
 int psql_command (char*,char*,char const*,...) ;

__attribute__((used)) static void
create_role(const char *rolename, const _stringlist *granted_dbs)
{
 header(_("creating role \"%s\""), rolename);
 psql_command("postgres", "CREATE ROLE \"%s\" WITH LOGIN", rolename);
 for (; granted_dbs != ((void*)0); granted_dbs = granted_dbs->next)
 {
  psql_command("postgres", "GRANT ALL ON DATABASE \"%s\" TO \"%s\"",
      granted_dbs->str, rolename);
 }
}
