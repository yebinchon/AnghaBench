
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int texture; } ;
struct lut_filter_data {char* file; float clut_amount; int effect; TYPE_1__ image; int target; } ;
typedef int obs_data_t ;


 int SETTING_CLUT_AMOUNT ;
 int SETTING_IMAGE_PATH ;
 int bfree (char*) ;
 char* bstrdup (char const*) ;
 int gs_effect_create_from_file (char*,int *) ;
 int gs_effect_destroy (int ) ;
 int gs_image_file_free (TYPE_1__*) ;
 int gs_image_file_init (TYPE_1__*,char const*) ;
 int gs_image_file_init_texture (TYPE_1__*) ;
 double obs_data_get_double (int *,int ) ;
 char* obs_data_get_string (int *,int ) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 char* obs_module_file (char*) ;

__attribute__((used)) static void color_grade_filter_update(void *data, obs_data_t *settings)
{
 struct lut_filter_data *filter = data;

 const char *path = obs_data_get_string(settings, SETTING_IMAGE_PATH);
 double clut_amount = obs_data_get_double(settings, SETTING_CLUT_AMOUNT);

 bfree(filter->file);
 if (path)
  filter->file = bstrdup(path);
 else
  filter->file = ((void*)0);

 obs_enter_graphics();
 gs_image_file_free(&filter->image);
 obs_leave_graphics();

 gs_image_file_init(&filter->image, path);

 obs_enter_graphics();

 gs_image_file_init_texture(&filter->image);

 filter->target = filter->image.texture;
 filter->clut_amount = (float)clut_amount;

 char *effect_path = obs_module_file("color_grade_filter.effect");
 gs_effect_destroy(filter->effect);
 filter->effect = gs_effect_create_from_file(effect_path, ((void*)0));
 bfree(effect_path);

 obs_leave_graphics();
}
