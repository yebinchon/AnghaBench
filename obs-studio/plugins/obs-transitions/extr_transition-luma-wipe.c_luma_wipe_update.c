
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct luma_wipe_info {float softness; int luma_image; int invert_luma; } ;
struct dstr {int array; int member_0; } ;
typedef int obs_data_t ;


 int S_LUMA_IMG ;
 int S_LUMA_INV ;
 int S_LUMA_SOFT ;
 int UNUSED_PARAMETER (int *) ;
 int bfree (char*) ;
 int dstr_cat (struct dstr*,char const*) ;
 int dstr_copy (struct dstr*,char*) ;
 int dstr_free (struct dstr*) ;
 int gs_image_file_free (int *) ;
 int gs_image_file_init (int *,char*) ;
 int gs_image_file_init_texture (int *) ;
 int obs_data_get_bool (int *,int ) ;
 scalar_t__ obs_data_get_double (int *,int ) ;
 char* obs_data_get_string (int *,int ) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 char* obs_module_file (int ) ;

__attribute__((used)) static void luma_wipe_update(void *data, obs_data_t *settings)
{
 struct luma_wipe_info *lwipe = data;

 const char *name = obs_data_get_string(settings, S_LUMA_IMG);
 lwipe->invert_luma = obs_data_get_bool(settings, S_LUMA_INV);
 lwipe->softness = (float)obs_data_get_double(settings, S_LUMA_SOFT);

 struct dstr path = {0};

 dstr_copy(&path, "luma_wipes/");
 dstr_cat(&path, name);

 char *file = obs_module_file(path.array);

 obs_enter_graphics();
 gs_image_file_free(&lwipe->luma_image);
 obs_leave_graphics();

 gs_image_file_init(&lwipe->luma_image, file);

 obs_enter_graphics();
 gs_image_file_init_texture(&lwipe->luma_image);
 obs_leave_graphics();

 bfree(file);
 dstr_free(&path);

 UNUSED_PARAMETER(settings);
}
