
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;


 int MP_DBG (struct mpv_global*,char*,char const*,char*) ;
 int * config_dirs ;
 scalar_t__ mp_get_platform_path (void*,struct mpv_global*,int ) ;
 char* mp_path_join (void*,char*,char const*) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;

char *mp_find_user_config_file(void *talloc_ctx, struct mpv_global *global,
                               const char *filename)
{
    void *tmp = talloc_new(((void*)0));
    char *res = (char *)mp_get_platform_path(tmp, global, config_dirs[0]);
    if (res)
        res = mp_path_join(talloc_ctx, res, filename);
    talloc_free(tmp);
    MP_DBG(global, "config path: '%s' -> '%s'\n", filename, res ? res : "-");
    return res;
}
