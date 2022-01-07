
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ecpgQuery; scalar_t__* stmtID; } ;


 int HashStmt (char const*) ;
 int stmtCacheEntPerBucket ;
 TYPE_1__* stmtCacheEntries ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
SearchStmtCache(const char *ecpgQuery)
{
 int entNo,
    entIx;


 if (stmtCacheEntries == ((void*)0))
  return 0;


 entNo = HashStmt(ecpgQuery);


 for (entIx = 0; entIx < stmtCacheEntPerBucket; ++entIx)
 {
  if (stmtCacheEntries[entNo].stmtID[0])
  {
   if (strcmp(ecpgQuery, stmtCacheEntries[entNo].ecpgQuery) == 0)
    break;
  }
  ++entNo;
 }


 if (entIx >= stmtCacheEntPerBucket)
  entNo = 0;

 return entNo;
}
