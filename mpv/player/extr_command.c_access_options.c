
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct m_property_action_arg {int action; scalar_t__ arg; int key; } ;
struct m_option {int dummy; } ;
struct m_config_option {struct m_option* opt; int data; } ;
struct TYPE_4__ {int mconfig; int playing; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_ERROR ;


 int M_PROPERTY_NOT_IMPLEMENTED ;
 int M_PROPERTY_OK ;

 int M_PROPERTY_UNAVAILABLE ;
 int M_PROPERTY_UNKNOWN ;
 int M_SETOPT_BACKUP ;
 int bstr0 (int ) ;
 struct m_config_option* m_config_get_co (int ,int ) ;
 int m_config_set_option_raw (int ,struct m_config_option*,scalar_t__,int) ;
 int m_option_copy (struct m_option*,scalar_t__,int ) ;
 int mp_wakeup_core (TYPE_1__*) ;

__attribute__((used)) static int access_options(struct m_property_action_arg *ka, bool local,
                          MPContext *mpctx)
{
    struct m_config_option *opt = m_config_get_co(mpctx->mconfig,
                                                  bstr0(ka->key));
    if (!opt)
        return M_PROPERTY_UNKNOWN;
    if (!opt->data)
        return M_PROPERTY_UNAVAILABLE;

    switch (ka->action) {
    case 130:
        m_option_copy(opt->opt, ka->arg, opt->data);
        return M_PROPERTY_OK;
    case 128: {
        if (local && !mpctx->playing)
            return M_PROPERTY_ERROR;
        int flags = local ? M_SETOPT_BACKUP : 0;
        int r = m_config_set_option_raw(mpctx->mconfig, opt, ka->arg, flags);
        mp_wakeup_core(mpctx);
        return r < 0 ? M_PROPERTY_ERROR : M_PROPERTY_OK;
    }
    case 129:
        *(struct m_option *)ka->arg = *opt->opt;
        return M_PROPERTY_OK;
    }
    return M_PROPERTY_NOT_IMPLEMENTED;
}
