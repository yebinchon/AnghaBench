
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SharedInvalidationMessage ;
typedef int Oid ;


 int DEBUG4 ;
 int * DatabasePath ;
 int * GetDatabasePath (int ,int ) ;
 scalar_t__ OidIsValid (int ) ;
 int RelationCacheInitFilePostInvalidate () ;
 int RelationCacheInitFilePreInvalidate () ;
 int SendSharedInvalidMessages (int *,int) ;
 int elog (int ,char*,int,...) ;
 int pfree (int *) ;
 int trace_recovery (int ) ;

void
ProcessCommittedInvalidationMessages(SharedInvalidationMessage *msgs,
          int nmsgs, bool RelcacheInitFileInval,
          Oid dbid, Oid tsid)
{
 if (nmsgs <= 0)
  return;

 elog(trace_recovery(DEBUG4), "replaying commit with %d messages%s", nmsgs,
   (RelcacheInitFileInval ? " and relcache file invalidation" : ""));

 if (RelcacheInitFileInval)
 {
  elog(trace_recovery(DEBUG4), "removing relcache init files for database %u",
    dbid);
  if (OidIsValid(dbid))
   DatabasePath = GetDatabasePath(dbid, tsid);

  RelationCacheInitFilePreInvalidate();

  if (OidIsValid(dbid))
  {
   pfree(DatabasePath);
   DatabasePath = ((void*)0);
  }
 }

 SendSharedInvalidMessages(msgs, nmsgs);

 if (RelcacheInitFileInval)
  RelationCacheInitFilePostInvalidate();
}
