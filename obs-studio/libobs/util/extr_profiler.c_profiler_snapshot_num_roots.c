
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num; } ;
struct TYPE_5__ {TYPE_1__ roots; } ;
typedef TYPE_2__ profiler_snapshot_t ;



size_t profiler_snapshot_num_roots(profiler_snapshot_t *snap)
{
 return snap ? snap->roots.num : 0;
}
