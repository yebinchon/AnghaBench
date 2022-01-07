
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ execs; int lineno; char const* connection; int * stmtID; int ecpgQuery; } ;
typedef TYPE_1__ stmtCacheEntry ;


 int HashStmt (char const*) ;
 scalar_t__ ecpg_alloc (int,int) ;
 scalar_t__ ecpg_freeStmtCacheEntry (int,int,int) ;
 int ecpg_strdup (char const*,int) ;
 int memcpy (int *,char const*,int) ;
 int stmtCacheArraySize ;
 int stmtCacheEntPerBucket ;
 TYPE_1__* stmtCacheEntries ;

__attribute__((used)) static int
AddStmtToCache(int lineno,
      const char *stmtID,
      const char *connection,
      int compat,
      const char *ecpgQuery)
{
 int ix,
    initEntNo,
    luEntNo,
    entNo;
 stmtCacheEntry *entry;


 if (stmtCacheEntries == ((void*)0))
 {
  stmtCacheEntries = (stmtCacheEntry *)
   ecpg_alloc(sizeof(stmtCacheEntry) * stmtCacheArraySize, lineno);
  if (stmtCacheEntries == ((void*)0))
   return -1;
 }


 initEntNo = HashStmt(ecpgQuery);


 entNo = initEntNo;

 luEntNo = initEntNo;
 for (ix = 0; ix < stmtCacheEntPerBucket; ++ix)
 {
  entry = &stmtCacheEntries[entNo];
  if (!entry->stmtID[0])
   break;
  if (entry->execs < stmtCacheEntries[luEntNo].execs)
   luEntNo = entNo;
  ++entNo;
 }





 if (ix >= stmtCacheEntPerBucket)
  entNo = luEntNo;


 if (ecpg_freeStmtCacheEntry(lineno, compat, entNo) < 0)
  return -1;


 entry = &stmtCacheEntries[entNo];
 entry->lineno = lineno;
 entry->ecpgQuery = ecpg_strdup(ecpgQuery, lineno);
 entry->connection = connection;
 entry->execs = 0;
 memcpy(entry->stmtID, stmtID, sizeof(entry->stmtID));

 return entNo;
}
