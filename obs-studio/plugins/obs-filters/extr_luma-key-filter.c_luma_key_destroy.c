
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct luma_key_filter_data {scalar_t__ effect; } ;


 int bfree (void*) ;
 int gs_effect_destroy (scalar_t__) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void luma_key_destroy(void *data)
{
 struct luma_key_filter_data *filter = data;

 if (filter->effect) {
  obs_enter_graphics();
  gs_effect_destroy(filter->effect);
  obs_leave_graphics();
 }

 bfree(data);
}
