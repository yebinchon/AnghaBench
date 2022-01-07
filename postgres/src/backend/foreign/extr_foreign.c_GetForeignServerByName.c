
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int ForeignServer ;


 int * GetForeignServer (int ) ;
 int OidIsValid (int ) ;
 int get_foreign_server_oid (char const*,int) ;

ForeignServer *
GetForeignServerByName(const char *srvname, bool missing_ok)
{
 Oid serverid = get_foreign_server_oid(srvname, missing_ok);

 if (!OidIsValid(serverid))
  return ((void*)0);

 return GetForeignServer(serverid);
}
