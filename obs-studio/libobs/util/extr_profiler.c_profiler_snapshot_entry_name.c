
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ profiler_snapshot_entry_t ;



const char *profiler_snapshot_entry_name(profiler_snapshot_entry_t *entry)
{
 return entry ? entry->name : ((void*)0);
}
