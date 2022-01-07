
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num; } ;
struct TYPE_5__ {TYPE_1__ children; } ;
typedef TYPE_2__ profiler_snapshot_entry_t ;



size_t profiler_snapshot_num_children(profiler_snapshot_entry_t *entry)
{
 return entry ? entry->children.num : 0;
}
