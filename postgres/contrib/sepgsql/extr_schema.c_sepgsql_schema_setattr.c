
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int SEPG_DB_SCHEMA__SETATTR ;
 int check_schema_perms (int ,int ,int) ;

void
sepgsql_schema_setattr(Oid namespaceId)
{
 check_schema_perms(namespaceId, SEPG_DB_SCHEMA__SETATTR, 1);
}
