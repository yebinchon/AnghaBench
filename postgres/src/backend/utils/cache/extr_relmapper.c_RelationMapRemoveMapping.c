
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32 ;
struct TYPE_5__ {size_t num_mappings; TYPE_1__* mappings; } ;
struct TYPE_4__ {scalar_t__ mapoid; } ;
typedef TYPE_2__ RelMapFile ;
typedef scalar_t__ Oid ;


 int ERROR ;
 TYPE_2__ active_local_updates ;
 int elog (int ,char*,scalar_t__) ;

void
RelationMapRemoveMapping(Oid relationId)
{
 RelMapFile *map = &active_local_updates;
 int32 i;

 for (i = 0; i < map->num_mappings; i++)
 {
  if (relationId == map->mappings[i].mapoid)
  {

   map->mappings[i] = map->mappings[map->num_mappings - 1];
   map->num_mappings--;
   return;
  }
 }
 elog(ERROR, "could not find temporary mapping for relation %u",
   relationId);
}
