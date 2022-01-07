
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;


 int appendPQExpBuffer (TYPE_1__*,char*,int ) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int buildACLCommands (char*,int *,int *,char const*,char const*,char const*,char const*,int ,int,TYPE_1__*) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int fmtId (char const*) ;
 scalar_t__ strlen (char const*) ;

bool
buildDefaultACLCommands(const char *type, const char *nspname,
      const char *acls, const char *racls,
      const char *initacls, const char *initracls,
      const char *owner,
      int remoteVersion,
      PQExpBuffer sql)
{
 PQExpBuffer prefix;

 prefix = createPQExpBuffer();







 appendPQExpBuffer(prefix, "ALTER DEFAULT PRIVILEGES FOR ROLE %s ",
       fmtId(owner));
 if (nspname)
  appendPQExpBuffer(prefix, "IN SCHEMA %s ", fmtId(nspname));

 if (strlen(initacls) != 0 || strlen(initracls) != 0)
 {
  appendPQExpBufferStr(sql, "SELECT pg_catalog.binary_upgrade_set_record_init_privs(true);\n");
  if (!buildACLCommands("", ((void*)0), ((void*)0), type,
         initacls, initracls, owner,
         prefix->data, remoteVersion, sql))
  {
   destroyPQExpBuffer(prefix);
   return 0;
  }
  appendPQExpBufferStr(sql, "SELECT pg_catalog.binary_upgrade_set_record_init_privs(false);\n");
 }

 if (!buildACLCommands("", ((void*)0), ((void*)0), type,
        acls, racls, owner,
        prefix->data, remoteVersion, sql))
 {
  destroyPQExpBuffer(prefix);
  return 0;
 }

 destroyPQExpBuffer(prefix);

 return 1;
}
