
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crop_filter_data {int effect; } ;


 int bfree (struct crop_filter_data*) ;
 int gs_effect_destroy (int ) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void crop_filter_destroy(void *data)
{
 struct crop_filter_data *filter = data;

 obs_enter_graphics();
 gs_effect_destroy(filter->effect);
 obs_leave_graphics();

 bfree(filter);
}
