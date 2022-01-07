
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int mconfig; int global; } ;


 int m_config_parse_config_file (int ,char*,char*,int ) ;
 char** mp_find_all_config_files (int *,int ,char*) ;
 int talloc_free (char**) ;

__attribute__((used)) static void load_all_cfgfiles(struct MPContext *mpctx, char *section,
                              char *filename)
{
    char **cf = mp_find_all_config_files(((void*)0), mpctx->global, filename);
    for (int i = 0; cf && cf[i]; i++)
        m_config_parse_config_file(mpctx->mconfig, cf[i], section, 0);
    talloc_free(cf);
}
