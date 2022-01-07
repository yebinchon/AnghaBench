
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mask_filter_data {int image; int effect; struct mask_filter_data* image_file; } ;


 int bfree (struct mask_filter_data*) ;
 int gs_effect_destroy (int ) ;
 int gs_image_file_free (int *) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void mask_filter_destroy(void *data)
{
 struct mask_filter_data *filter = data;

 if (filter->image_file)
  bfree(filter->image_file);

 obs_enter_graphics();
 gs_effect_destroy(filter->effect);
 gs_image_file_free(&filter->image);
 obs_leave_graphics();

 bfree(filter);
}
