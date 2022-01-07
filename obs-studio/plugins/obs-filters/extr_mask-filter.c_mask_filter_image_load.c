
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int texture; } ;
struct mask_filter_data {char* image_file; TYPE_1__ image; int target; scalar_t__ update_time_elapsed; int image_file_timestamp; } ;


 int get_modified_timestamp (char*) ;
 int gs_image_file_init (TYPE_1__*,char*) ;
 int gs_image_file_init_texture (TYPE_1__*) ;
 int mask_filter_image_unload (struct mask_filter_data*) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void mask_filter_image_load(struct mask_filter_data *filter)
{
 mask_filter_image_unload(filter);

 char *path = filter->image_file;

 if (path && *path) {
  filter->image_file_timestamp = get_modified_timestamp(path);
  gs_image_file_init(&filter->image, path);
  filter->update_time_elapsed = 0;

  obs_enter_graphics();
  gs_image_file_init_texture(&filter->image);
  obs_leave_graphics();

  filter->target = filter->image.texture;
 }
}
