
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; TYPE_2__* rconn; } ;
typedef TYPE_1__ remoteConnHashEnt ;
struct TYPE_6__ {int conn; } ;
typedef TYPE_2__ remoteConn ;


 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 int HASH_ENTER ;
 int PQfinish (int ) ;
 scalar_t__ createConnHash () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ hash_search (scalar_t__,char*,int ,int*) ;
 int pfree (TYPE_2__*) ;
 char* pstrdup (char const*) ;
 scalar_t__ remoteConnHash ;
 int strlcpy (int ,char const*,int) ;
 int strlen (char*) ;
 int truncate_identifier (char*,int ,int) ;

__attribute__((used)) static void
createNewConnection(const char *name, remoteConn *rconn)
{
 remoteConnHashEnt *hentry;
 bool found;
 char *key;

 if (!remoteConnHash)
  remoteConnHash = createConnHash();

 key = pstrdup(name);
 truncate_identifier(key, strlen(key), 1);
 hentry = (remoteConnHashEnt *) hash_search(remoteConnHash, key,
              HASH_ENTER, &found);

 if (found)
 {
  PQfinish(rconn->conn);
  pfree(rconn);

  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("duplicate connection name")));
 }

 hentry->rconn = rconn;
 strlcpy(hentry->name, name, sizeof(hentry->name));
}
