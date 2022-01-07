
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rconn; } ;
typedef TYPE_1__ remoteConnHashEnt ;
typedef int remoteConn ;


 int HASH_FIND ;
 scalar_t__ createConnHash () ;
 scalar_t__ hash_search (scalar_t__,char*,int ,int *) ;
 char* pstrdup (char const*) ;
 scalar_t__ remoteConnHash ;
 int strlen (char*) ;
 int truncate_identifier (char*,int ,int) ;

__attribute__((used)) static remoteConn *
getConnectionByName(const char *name)
{
 remoteConnHashEnt *hentry;
 char *key;

 if (!remoteConnHash)
  remoteConnHash = createConnHash();

 key = pstrdup(name);
 truncate_identifier(key, strlen(key), 0);
 hentry = (remoteConnHashEnt *) hash_search(remoteConnHash,
              key, HASH_FIND, ((void*)0));

 if (hentry)
  return hentry->rconn;

 return ((void*)0);
}
