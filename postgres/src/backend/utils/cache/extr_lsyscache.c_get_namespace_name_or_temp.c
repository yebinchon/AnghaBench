
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 char* get_namespace_name (int ) ;
 scalar_t__ isTempNamespace (int ) ;

char *
get_namespace_name_or_temp(Oid nspid)
{
 if (isTempNamespace(nspid))
  return "pg_temp";
 else
  return get_namespace_name(nspid);
}
