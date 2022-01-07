
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int removed; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_source_dosignal (TYPE_1__*,char*,char*) ;
 int obs_source_valid (TYPE_1__*,char*) ;

void obs_source_remove(obs_source_t *source)
{
 if (!obs_source_valid(source, "obs_source_remove"))
  return;

 if (!source->removed) {
  source->removed = 1;
  obs_source_dosignal(source, "source_remove", "remove");
 }
}
