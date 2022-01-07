
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32 ;
struct TYPE_5__ {size_t num_mappings; TYPE_1__* mappings; } ;
struct TYPE_4__ {scalar_t__ mapoid; scalar_t__ mapfilenode; } ;
typedef TYPE_2__ RelMapFile ;
typedef scalar_t__ Oid ;


 int ERROR ;
 scalar_t__ MAX_MAPPINGS ;
 int elog (int ,char*,...) ;

__attribute__((used)) static void
apply_map_update(RelMapFile *map, Oid relationId, Oid fileNode, bool add_okay)
{
 int32 i;


 for (i = 0; i < map->num_mappings; i++)
 {
  if (relationId == map->mappings[i].mapoid)
  {
   map->mappings[i].mapfilenode = fileNode;
   return;
  }
 }


 if (!add_okay)
  elog(ERROR, "attempt to apply a mapping to unmapped relation %u",
    relationId);
 if (map->num_mappings >= MAX_MAPPINGS)
  elog(ERROR, "ran out of space in relation map");
 map->mappings[map->num_mappings].mapoid = relationId;
 map->mappings[map->num_mappings].mapfilenode = fileNode;
 map->num_mappings++;
}
