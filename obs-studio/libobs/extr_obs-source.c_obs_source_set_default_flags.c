
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int default_flags; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_source_valid (TYPE_1__*,char*) ;

void obs_source_set_default_flags(obs_source_t *source, uint32_t flags)
{
 if (!obs_source_valid(source, "obs_source_set_default_flags"))
  return;

 source->default_flags = flags;
}
