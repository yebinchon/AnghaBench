
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct m_obj_settings {int dummy; } ;
struct m_config_option {int opt; int data; } ;
struct MPContext {int mconfig; } ;
typedef int optname ;
typedef enum stream_type { ____Placeholder_stream_type } stream_type ;
typedef int bstr ;


 char* BSTR_P (int ) ;
 int bstr0 (char const*) ;
 char const** filter_opt ;
 struct m_config_option* m_config_get_co (int ,int ) ;
 int m_option_copy (int ,struct m_obj_settings**,int ) ;
 int m_option_free (int ,struct m_obj_settings**) ;
 int m_option_parse (struct mp_log*,int ,int ,int ,struct m_obj_settings**) ;
 int set_filters (struct MPContext*,int,struct m_obj_settings*) ;
 int snprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static int edit_filters(struct MPContext *mpctx, struct mp_log *log,
                        enum stream_type mediatype,
                        const char *cmd, const char *arg)
{
    bstr option = bstr0(filter_opt[mediatype]);
    struct m_config_option *co = m_config_get_co(mpctx->mconfig, option);
    if (!co)
        return -1;


    char optname[20];
    snprintf(optname, sizeof(optname), "%.*s-%s", BSTR_P(option), cmd);

    struct m_obj_settings *new_chain = ((void*)0);
    m_option_copy(co->opt, &new_chain, co->data);

    int r = m_option_parse(log, co->opt, bstr0(optname), bstr0(arg), &new_chain);
    if (r >= 0)
        r = set_filters(mpctx, mediatype, new_chain);

    m_option_free(co->opt, &new_chain);

    return r >= 0 ? 0 : -1;
}
