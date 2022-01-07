
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int SEPG_DB_SCHEMA__SEARCH ;
 int check_schema_perms (int ,int ,int) ;

bool
sepgsql_schema_search(Oid namespaceId, bool abort_on_violation)
{
 return check_schema_perms(namespaceId,
         SEPG_DB_SCHEMA__SEARCH,
         abort_on_violation);
}
