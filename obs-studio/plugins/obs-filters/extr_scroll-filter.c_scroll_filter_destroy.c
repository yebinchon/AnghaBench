
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scroll_filter_data {int sampler; int effect; } ;


 int bfree (struct scroll_filter_data*) ;
 int gs_effect_destroy (int ) ;
 int gs_samplerstate_destroy (int ) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void scroll_filter_destroy(void *data)
{
 struct scroll_filter_data *filter = data;

 obs_enter_graphics();
 gs_effect_destroy(filter->effect);
 gs_samplerstate_destroy(filter->sampler);
 obs_leave_graphics();

 bfree(filter);
}
