
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* array; } ;
struct TYPE_7__ {scalar_t__ loaded; int settings; TYPE_2__ file; TYPE_2__ path; int type; } ;
struct TYPE_9__ {int array; } ;
struct obs_python_script {TYPE_1__ base; TYPE_3__ dir; int name; } ;
typedef int obs_script_t ;
typedef int obs_data_t ;


 int OBS_SCRIPT_LANG_PYTHON ;
 int add_to_python_path (int ) ;
 struct obs_python_script* bzalloc (int) ;
 struct obs_python_script* cur_python_script ;
 int dstr_copy (TYPE_2__*,char const*) ;
 int dstr_copy_dstr (int *,TYPE_2__*) ;
 int dstr_left (TYPE_3__*,TYPE_2__*,int) ;
 int dstr_replace (TYPE_2__*,char*,char*) ;
 int dstr_resize (int *,int) ;
 scalar_t__ load_python_script (struct obs_python_script*) ;
 int lock_python () ;
 int obs_data_apply (int ,int *) ;
 int obs_data_create () ;
 int obs_python_script_update (TYPE_1__*,int *) ;
 int python_loaded ;
 char* strrchr (char const*,char) ;
 char* strstr (char const*,char*) ;
 int unlock_python () ;

obs_script_t *obs_python_script_create(const char *path, obs_data_t *settings)
{
 struct obs_python_script *data = bzalloc(sizeof(*data));

 data->base.type = OBS_SCRIPT_LANG_PYTHON;

 dstr_copy(&data->base.path, path);
 dstr_replace(&data->base.path, "\\", "/");
 path = data->base.path.array;

 const char *slash = path && *path ? strrchr(path, '/') : ((void*)0);
 if (slash) {
  slash++;
  dstr_copy(&data->base.file, slash);
  dstr_left(&data->dir, &data->base.path, slash - path);
 } else {
  dstr_copy(&data->base.file, path);
 }

 path = data->base.file.array;
 dstr_copy_dstr(&data->name, &data->base.file);

 const char *ext = strstr(path, ".py");
 if (ext)
  dstr_resize(&data->name, ext - path);

 data->base.settings = obs_data_create();
 if (settings)
  obs_data_apply(data->base.settings, settings);

 if (!python_loaded)
  return (obs_script_t *)data;

 lock_python();
 add_to_python_path(data->dir.array);
 data->base.loaded = load_python_script(data);
 if (data->base.loaded) {
  cur_python_script = data;
  obs_python_script_update(&data->base, ((void*)0));
  cur_python_script = ((void*)0);
 }
 unlock_python();

 return (obs_script_t *)data;
}
