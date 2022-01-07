
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int InvalidBackendId ;
 int atoi (char*) ;
 char* get_namespace_name (int ) ;
 int pfree (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

int
GetTempNamespaceBackendId(Oid namespaceId)
{
 int result;
 char *nspname;


 nspname = get_namespace_name(namespaceId);
 if (!nspname)
  return InvalidBackendId;
 if (strncmp(nspname, "pg_temp_", 8) == 0)
  result = atoi(nspname + 8);
 else if (strncmp(nspname, "pg_toast_temp_", 14) == 0)
  result = atoi(nspname + 14);
 else
  result = InvalidBackendId;
 pfree(nspname);
 return result;
}
