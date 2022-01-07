
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t handler; } ;
struct TYPE_6__ {scalar_t__ (* sync_unlinkfiletag ) (TYPE_3__*,char*) ;} ;
struct TYPE_5__ {scalar_t__ cycle_ctr; TYPE_3__ tag; } ;
typedef TYPE_1__ PendingUnlinkEntry ;


 int AbsorbSyncRequests () ;
 scalar_t__ ENOENT ;
 int MAXPGPATH ;
 scalar_t__ NIL ;
 int UNLINKS_PER_ABSORB ;
 int WARNING ;
 scalar_t__ checkpoint_cycle_ctr ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;
 scalar_t__ linitial (scalar_t__) ;
 scalar_t__ list_delete_first (scalar_t__) ;
 scalar_t__ pendingUnlinks ;
 int pfree (TYPE_1__*) ;
 scalar_t__ stub1 (TYPE_3__*,char*) ;
 TYPE_2__* syncsw ;

void
SyncPostCheckpoint(void)
{
 int absorb_counter;

 absorb_counter = UNLINKS_PER_ABSORB;
 while (pendingUnlinks != NIL)
 {
  PendingUnlinkEntry *entry = (PendingUnlinkEntry *) linitial(pendingUnlinks);
  char path[MAXPGPATH];
  if (entry->cycle_ctr == checkpoint_cycle_ctr)
   break;


  if (syncsw[entry->tag.handler].sync_unlinkfiletag(&entry->tag,
                path) < 0)
  {







   if (errno != ENOENT)
    ereport(WARNING,
      (errcode_for_file_access(),
       errmsg("could not remove file \"%s\": %m", path)));
  }


  pendingUnlinks = list_delete_first(pendingUnlinks);
  pfree(entry);







  if (--absorb_counter <= 0)
  {
   AbsorbSyncRequests();
   absorb_counter = UNLINKS_PER_ABSORB;
  }
 }
}
