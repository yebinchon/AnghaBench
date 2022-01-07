
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_filter {int whatever; int source; } ;
typedef int gs_effect_t ;


 int GS_RGBA ;
 int OBS_ALLOW_DIRECT_RENDERING ;
 int UNUSED_PARAMETER (int *) ;
 int obs_source_process_filter_begin (int ,int ,int ) ;
 int obs_source_process_filter_end (int ,int ,int ,int ) ;

__attribute__((used)) static void filter_render(void *data, gs_effect_t *effect)
{
 struct test_filter *tf = data;

 if (!obs_source_process_filter_begin(tf->source, GS_RGBA,
          OBS_ALLOW_DIRECT_RENDERING))
  return;

 obs_source_process_filter_end(tf->source, tf->whatever, 0, 0);

 UNUSED_PARAMETER(effect);
}
