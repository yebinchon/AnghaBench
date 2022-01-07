
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;


 char** mp_find_all_config_files_limited (void*,struct mpv_global*,int,char const*) ;
 int talloc_free (char**) ;
 char* talloc_steal (void*,char*) ;

char *mp_find_config_file(void *talloc_ctx, struct mpv_global *global,
                          const char *filename)
{
    char **l = mp_find_all_config_files_limited(talloc_ctx, global, 1, filename);
    char *r = l && l[0] ? talloc_steal(talloc_ctx, l[0]) : ((void*)0);
    talloc_free(l);
    return r;
}
