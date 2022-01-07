
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int mconfig; int global; } ;


 int m_config_parse_config_file (int ,char*,int *,int) ;
 char* mp_get_user_path (int *,int ,char*) ;
 int talloc_free (char*) ;

__attribute__((used)) static int cfg_include(void *ctx, char *filename, int flags)
{
    struct MPContext *mpctx = ctx;
    char *fname = mp_get_user_path(((void*)0), mpctx->global, filename);
    int r = m_config_parse_config_file(mpctx->mconfig, fname, ((void*)0), flags);
    talloc_free(fname);
    return r;
}
