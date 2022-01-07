
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;


 char* mp_find_user_config_file (int *,struct mpv_global*,char*) ;
 int mp_mkdirp (char*) ;
 int talloc_free (char*) ;

void mp_mk_config_dir(struct mpv_global *global, char *subdir)
{
    char *dir = mp_find_user_config_file(((void*)0), global, subdir);
    if (dir)
        mp_mkdirp(dir);
    talloc_free(dir);
}
