
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_source {scalar_t__* file; } ;
struct dstr {char const* array; int member_0; } ;
typedef int obs_properties_t ;


 int OBS_PATH_FILE ;
 int dstr_copy (struct dstr*,scalar_t__*) ;
 int dstr_free (struct dstr*) ;
 int dstr_replace (struct dstr*,char*,char*) ;
 int dstr_resize (struct dstr*,int) ;
 int image_filter ;
 int obs_module_text (char*) ;
 int obs_properties_add_bool (int *,char*,int ) ;
 int obs_properties_add_path (int *,char*,int ,int ,int ,char const*) ;
 int * obs_properties_create () ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static obs_properties_t *image_source_properties(void *data)
{
 struct image_source *s = data;
 struct dstr path = {0};

 obs_properties_t *props = obs_properties_create();

 if (s && s->file && *s->file) {
  const char *slash;

  dstr_copy(&path, s->file);
  dstr_replace(&path, "\\", "/");
  slash = strrchr(path.array, '/');
  if (slash)
   dstr_resize(&path, slash - path.array + 1);
 }

 obs_properties_add_path(props, "file", obs_module_text("File"),
    OBS_PATH_FILE, image_filter, path.array);
 obs_properties_add_bool(props, "unload",
    obs_module_text("UnloadWhenNotShowing"));
 dstr_free(&path);

 return props;
}
