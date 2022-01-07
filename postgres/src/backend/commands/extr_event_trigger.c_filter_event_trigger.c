
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ enabled; scalar_t__ ntags; int tag; } ;
typedef TYPE_1__ EventTriggerCacheItem ;


 scalar_t__ SESSION_REPLICATION_ROLE_REPLICA ;
 scalar_t__ SessionReplicationRole ;
 scalar_t__ TRIGGER_FIRES_ON_ORIGIN ;
 scalar_t__ TRIGGER_FIRES_ON_REPLICA ;
 int * bsearch (char const**,int ,scalar_t__,int,int ) ;
 int pg_qsort_strcmp ;

__attribute__((used)) static bool
filter_event_trigger(const char **tag, EventTriggerCacheItem *item)
{




 if (SessionReplicationRole == SESSION_REPLICATION_ROLE_REPLICA)
 {
  if (item->enabled == TRIGGER_FIRES_ON_ORIGIN)
   return 0;
 }
 else
 {
  if (item->enabled == TRIGGER_FIRES_ON_REPLICA)
   return 0;
 }


 if (item->ntags != 0 && bsearch(tag, item->tag,
         item->ntags, sizeof(char *),
         pg_qsort_strcmp) == ((void*)0))
  return 0;


 return 1;
}
