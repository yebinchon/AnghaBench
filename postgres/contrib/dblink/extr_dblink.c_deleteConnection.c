
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int remoteConnHashEnt ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int HASH_REMOVE ;
 scalar_t__ createConnHash () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ hash_search (scalar_t__,char*,int ,int*) ;
 char* pstrdup (char const*) ;
 scalar_t__ remoteConnHash ;
 int strlen (char*) ;
 int truncate_identifier (char*,int ,int) ;

__attribute__((used)) static void
deleteConnection(const char *name)
{
 remoteConnHashEnt *hentry;
 bool found;
 char *key;

 if (!remoteConnHash)
  remoteConnHash = createConnHash();

 key = pstrdup(name);
 truncate_identifier(key, strlen(key), 0);
 hentry = (remoteConnHashEnt *) hash_search(remoteConnHash,
              key, HASH_REMOVE, &found);

 if (!hentry)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("undefined connection name")));

}
