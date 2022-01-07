
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t int32 ;
struct TYPE_7__ {size_t num_mappings; TYPE_1__* mappings; } ;
struct TYPE_6__ {int mapfilenode; int mapoid; } ;
typedef TYPE_2__ RelMapFile ;


 int apply_map_update (TYPE_2__*,int ,int ,int) ;

__attribute__((used)) static void
merge_map_updates(RelMapFile *map, const RelMapFile *updates, bool add_okay)
{
 int32 i;

 for (i = 0; i < updates->num_mappings; i++)
 {
  apply_map_update(map,
       updates->mappings[i].mapoid,
       updates->mappings[i].mapfilenode,
       add_okay);
 }
}
