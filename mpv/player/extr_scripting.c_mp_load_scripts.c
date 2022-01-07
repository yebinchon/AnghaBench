
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {int global; TYPE_1__* opts; } ;
struct TYPE_2__ {char** script_files; int auto_load_scripts; } ;


 char** list_script_files (void*,char*) ;
 char** mp_find_all_config_files (void*,int ,char*) ;
 int mp_load_script (struct MPContext*,char*) ;
 int mp_load_user_script (struct MPContext*,char*) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;

void mp_load_scripts(struct MPContext *mpctx)
{

    char **files = mpctx->opts->script_files;
    for (int n = 0; files && files[n]; n++) {
        if (files[n][0])
            mp_load_user_script(mpctx, files[n]);
    }
    if (!mpctx->opts->auto_load_scripts)
        return;


    void *tmp = talloc_new(((void*)0));
    char **scriptsdir = mp_find_all_config_files(tmp, mpctx->global, "scripts");
    for (int i = 0; scriptsdir && scriptsdir[i]; i++) {
        files = list_script_files(tmp, scriptsdir[i]);
        for (int n = 0; files && files[n]; n++)
            mp_load_script(mpctx, files[n]);
    }
    talloc_free(tmp);
}
