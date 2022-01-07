
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int obs_source_t ;
typedef int gs_effect_t ;


 int obs_ptr_valid (int *,char*) ;
 int obs_source_process_filter_tech_end (int *,int *,int ,int ,char*) ;

void obs_source_process_filter_end(obs_source_t *filter, gs_effect_t *effect,
       uint32_t width, uint32_t height)
{
 if (!obs_ptr_valid(filter, "obs_source_process_filter_end"))
  return;

 obs_source_process_filter_tech_end(filter, effect, width, height,
        "Draw");
}
