
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ flags; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_source_valid (TYPE_1__*,char*) ;
 int signal_flags_updated (TYPE_1__*) ;

void obs_source_set_flags(obs_source_t *source, uint32_t flags)
{
 if (!obs_source_valid(source, "obs_source_set_flags"))
  return;

 if (flags != source->flags) {
  source->flags = flags;
  signal_flags_updated(source);
 }
}
