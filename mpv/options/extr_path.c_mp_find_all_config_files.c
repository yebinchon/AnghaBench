
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;


 char** mp_find_all_config_files_limited (void*,struct mpv_global*,int,char const*) ;

char **mp_find_all_config_files(void *talloc_ctx, struct mpv_global *global,
                                const char *filename)
{
    return mp_find_all_config_files_limited(talloc_ctx, global, 64, filename);
}
