
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mask_filter_data {int image; } ;


 int gs_image_file_free (int *) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void mask_filter_image_unload(struct mask_filter_data *filter)
{
 obs_enter_graphics();
 gs_image_file_free(&filter->image);
 obs_leave_graphics();
}
