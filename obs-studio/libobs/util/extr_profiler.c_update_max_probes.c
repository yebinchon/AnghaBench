
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t max_probe_count; } ;
typedef TYPE_1__ profile_times_table ;



__attribute__((used)) static inline void update_max_probes(profile_times_table *map, size_t val)
{
 map->max_probe_count =
  map->max_probe_count < val ? val : map->max_probe_count;
}
