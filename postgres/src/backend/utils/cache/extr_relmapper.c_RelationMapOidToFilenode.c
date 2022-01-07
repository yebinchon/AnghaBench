
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t int32 ;
struct TYPE_8__ {size_t num_mappings; TYPE_1__* mappings; } ;
struct TYPE_7__ {scalar_t__ mapoid; scalar_t__ mapfilenode; } ;
typedef TYPE_2__ RelMapFile ;
typedef scalar_t__ Oid ;


 scalar_t__ InvalidOid ;
 TYPE_2__ active_local_updates ;
 TYPE_2__ active_shared_updates ;
 TYPE_2__ local_map ;
 TYPE_2__ shared_map ;

Oid
RelationMapOidToFilenode(Oid relationId, bool shared)
{
 const RelMapFile *map;
 int32 i;


 if (shared)
 {
  map = &active_shared_updates;
  for (i = 0; i < map->num_mappings; i++)
  {
   if (relationId == map->mappings[i].mapoid)
    return map->mappings[i].mapfilenode;
  }
  map = &shared_map;
  for (i = 0; i < map->num_mappings; i++)
  {
   if (relationId == map->mappings[i].mapoid)
    return map->mappings[i].mapfilenode;
  }
 }
 else
 {
  map = &active_local_updates;
  for (i = 0; i < map->num_mappings; i++)
  {
   if (relationId == map->mappings[i].mapoid)
    return map->mappings[i].mapfilenode;
  }
  map = &local_map;
  for (i = 0; i < map->num_mappings; i++)
  {
   if (relationId == map->mappings[i].mapoid)
    return map->mappings[i].mapfilenode;
  }
 }

 return InvalidOid;
}
