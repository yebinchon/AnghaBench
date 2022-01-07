
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int global; } ;


 char* mp_get_user_path (int *,int ,char const*) ;
 int mp_load_script (struct MPContext*,char*) ;
 int talloc_free (char*) ;

int mp_load_user_script(struct MPContext *mpctx, const char *fname)
{
    char *path = mp_get_user_path(((void*)0), mpctx->global, fname);
    int ret = mp_load_script(mpctx, path);
    talloc_free(path);
    return ret;
}
