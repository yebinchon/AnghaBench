
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 char* get_namespace_name (int ) ;
 int pfree (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

bool
isAnyTempNamespace(Oid namespaceId)
{
 bool result;
 char *nspname;


 nspname = get_namespace_name(namespaceId);
 if (!nspname)
  return 0;
 result = (strncmp(nspname, "pg_temp_", 8) == 0) ||
  (strncmp(nspname, "pg_toast_temp_", 14) == 0);
 pfree(nspname);
 return result;
}
