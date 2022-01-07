
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;


 int MAIN_VIEW ;
 int obs_source_deactivate (int *,int ) ;
 scalar_t__ obs_source_valid (int *,char*) ;

void obs_source_dec_active(obs_source_t *source)
{
 if (obs_source_valid(source, "obs_source_dec_active"))
  obs_source_deactivate(source, MAIN_VIEW);
}
