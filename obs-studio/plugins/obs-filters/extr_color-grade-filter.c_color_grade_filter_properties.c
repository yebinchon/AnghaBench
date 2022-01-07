
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lut_filter_data {char* file; } ;
struct dstr {char const* array; int member_0; } ;
typedef int obs_properties_t ;


 int OBS_PATH_FILE ;
 int SETTING_CLUT_AMOUNT ;
 int SETTING_IMAGE_PATH ;
 int TEXT_AMOUNT ;
 int TEXT_IMAGE_PATH ;
 int UNUSED_PARAMETER (void*) ;
 int bfree (char*) ;
 int dstr_cat (struct dstr*,char*) ;
 int dstr_cat_ch (struct dstr*,char) ;
 int dstr_copy (struct dstr*,char*) ;
 int dstr_free (struct dstr*) ;
 int dstr_replace (struct dstr*,char*,char*) ;
 int dstr_resize (struct dstr*,int) ;
 char* obs_module_file (char*) ;
 int obs_properties_add_float_slider (int *,int ,int ,int ,int,double) ;
 int obs_properties_add_path (int *,int ,int ,int ,char const*,char const*) ;
 int * obs_properties_create () ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static obs_properties_t *color_grade_filter_properties(void *data)
{
 struct lut_filter_data *s = data;
 struct dstr path = {0};
 const char *slash;

 obs_properties_t *props = obs_properties_create();
 struct dstr filter_str = {0};

 dstr_cat(&filter_str, "(*.png)");

 if (s && s->file && *s->file) {
  dstr_copy(&path, s->file);
 } else {
  char *lut_dir = obs_module_file("LUTs");
  dstr_copy(&path, lut_dir);
  dstr_cat_ch(&path, '/');
  bfree(lut_dir);
 }

 dstr_replace(&path, "\\", "/");
 slash = strrchr(path.array, '/');
 if (slash)
  dstr_resize(&path, slash - path.array + 1);

 obs_properties_add_path(props, SETTING_IMAGE_PATH, TEXT_IMAGE_PATH,
    OBS_PATH_FILE, filter_str.array, path.array);
 obs_properties_add_float_slider(props, SETTING_CLUT_AMOUNT, TEXT_AMOUNT,
     0, 1, 0.01);

 dstr_free(&filter_str);
 dstr_free(&path);

 UNUSED_PARAMETER(data);
 return props;
}
