
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;


 int AUX_VIEW ;
 int obs_source_activate (int *,int ) ;
 scalar_t__ obs_source_valid (int *,char*) ;

void obs_source_inc_showing(obs_source_t *source)
{
 if (obs_source_valid(source, "obs_source_inc_showing"))
  obs_source_activate(source, AUX_VIEW);
}
