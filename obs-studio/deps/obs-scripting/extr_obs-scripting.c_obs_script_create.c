
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_script_t ;
typedef int obs_data_t ;


 int LOG_WARNING ;
 int blog (int ,char*,char const*) ;
 int * obs_lua_script_create (char const*,int *) ;
 int * obs_python_script_create (char const*,int *) ;
 int ptr_valid (char const*) ;
 int scripting_loaded ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strrchr (char const*,char) ;

obs_script_t *obs_script_create(const char *path, obs_data_t *settings)
{
 obs_script_t *script = ((void*)0);
 const char *ext;

 if (!scripting_loaded)
  return ((void*)0);
 if (!ptr_valid(path))
  return ((void*)0);

 ext = strrchr(path, '.');
 if (!ext)
  return ((void*)0);
 {
  blog(LOG_WARNING, "Unsupported/unknown script type: %s", path);
 }

 return script;
}
