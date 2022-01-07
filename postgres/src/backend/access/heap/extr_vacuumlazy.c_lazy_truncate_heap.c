
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rel_pages; scalar_t__ nonempty_pages; int lock_waiter_detected; int pages_removed; } ;
typedef int Relation ;
typedef int PGRUsage ;
typedef TYPE_1__ LVRelStats ;
typedef scalar_t__ BlockNumber ;


 int AccessExclusiveLock ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ ConditionalLockRelation (int ,int ) ;
 int PROGRESS_VACUUM_PHASE ;
 int PROGRESS_VACUUM_PHASE_TRUNCATE ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int RelationGetRelationName (int ) ;
 int RelationTruncate (int ,scalar_t__) ;
 int UnlockRelation (int ,int ) ;
 int VACUUM_TRUNCATE_LOCK_TIMEOUT ;
 int VACUUM_TRUNCATE_LOCK_WAIT_INTERVAL ;
 scalar_t__ count_nondeletable_pages (int ,TYPE_1__*) ;
 int elevel ;
 int ereport (int ,int ) ;
 int errdetail_internal (char*,int ) ;
 int errmsg (char*,int ,...) ;
 int pg_rusage_init (int *) ;
 int pg_rusage_show (int *) ;
 int pg_usleep (int) ;
 int pgstat_progress_update_param (int ,int ) ;

__attribute__((used)) static void
lazy_truncate_heap(Relation onerel, LVRelStats *vacrelstats)
{
 BlockNumber old_rel_pages = vacrelstats->rel_pages;
 BlockNumber new_rel_pages;
 PGRUsage ru0;
 int lock_retry;

 pg_rusage_init(&ru0);


 pgstat_progress_update_param(PROGRESS_VACUUM_PHASE,
         PROGRESS_VACUUM_PHASE_TRUNCATE);




 do
 {







  vacrelstats->lock_waiter_detected = 0;
  lock_retry = 0;
  while (1)
  {
   if (ConditionalLockRelation(onerel, AccessExclusiveLock))
    break;





   CHECK_FOR_INTERRUPTS();

   if (++lock_retry > (VACUUM_TRUNCATE_LOCK_TIMEOUT /
        VACUUM_TRUNCATE_LOCK_WAIT_INTERVAL))
   {




    vacrelstats->lock_waiter_detected = 1;
    ereport(elevel,
      (errmsg("\"%s\": stopping truncate due to conflicting lock request",
        RelationGetRelationName(onerel))));
    return;
   }

   pg_usleep(VACUUM_TRUNCATE_LOCK_WAIT_INTERVAL * 1000L);
  }






  new_rel_pages = RelationGetNumberOfBlocks(onerel);
  if (new_rel_pages != old_rel_pages)
  {







   UnlockRelation(onerel, AccessExclusiveLock);
   return;
  }







  new_rel_pages = count_nondeletable_pages(onerel, vacrelstats);

  if (new_rel_pages >= old_rel_pages)
  {

   UnlockRelation(onerel, AccessExclusiveLock);
   return;
  }




  RelationTruncate(onerel, new_rel_pages);
  UnlockRelation(onerel, AccessExclusiveLock);






  vacrelstats->pages_removed += old_rel_pages - new_rel_pages;
  vacrelstats->rel_pages = new_rel_pages;

  ereport(elevel,
    (errmsg("\"%s\": truncated %u to %u pages",
      RelationGetRelationName(onerel),
      old_rel_pages, new_rel_pages),
     errdetail_internal("%s",
         pg_rusage_show(&ru0))));
  old_rel_pages = new_rel_pages;
 } while (new_rel_pages > vacrelstats->nonempty_pages &&
    vacrelstats->lock_waiter_detected);
}
