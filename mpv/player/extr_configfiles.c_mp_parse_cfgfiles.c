
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPOpts {TYPE_1__* encode_opts; } ;
struct MPContext {int * mconfig; int global; struct MPOpts* opts; } ;
typedef int m_config_t ;
struct TYPE_2__ {scalar_t__* file; } ;


 int SECT_ENCODE ;
 int load_all_cfgfiles (struct MPContext*,char*,char*) ;
 int m_config_set_profile (int *,int ,int ) ;
 int mp_mk_config_dir (int ,char*) ;

void mp_parse_cfgfiles(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;

    mp_mk_config_dir(mpctx->global, "");

    m_config_t *conf = mpctx->mconfig;
    char *section = ((void*)0);
    bool encoding = opts->encode_opts &&
        opts->encode_opts->file && opts->encode_opts->file[0];




    if (encoding)
        section = "playback-default";

    load_all_cfgfiles(mpctx, ((void*)0), "encoding-profiles.conf");

    load_all_cfgfiles(mpctx, section, "mpv.conf|config");

    if (encoding)
        m_config_set_profile(conf, SECT_ENCODE, 0);
}
