
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sync_offset; } ;
typedef TYPE_1__ obs_source_t ;
typedef int int64_t ;


 scalar_t__ obs_source_valid (TYPE_1__ const*,char*) ;

int64_t obs_source_get_sync_offset(const obs_source_t *source)
{
 return obs_source_valid(source, "obs_source_get_sync_offset")
         ? source->sync_offset
         : 0;
}
