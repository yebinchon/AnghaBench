
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int mconfig; } ;


 int MP_MSG (struct MPContext*,int,char*,char const*) ;
 int m_config_parse_config_file (int ,char const*,int *,int) ;
 int mp_path_exists (char const*) ;

__attribute__((used)) static int try_load_config(struct MPContext *mpctx, const char *file, int flags,
                           int msgl)
{
    if (!mp_path_exists(file))
        return 0;
    MP_MSG(mpctx, msgl, "Loading config '%s'\n", file);
    m_config_parse_config_file(mpctx->mconfig, file, ((void*)0), flags);
    return 1;
}
