
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct m_property {char* name; } ;
struct m_option {int dummy; } ;
struct m_config_option {int data; struct m_option* opt; } ;
struct TYPE_4__ {int mconfig; TYPE_1__* command_ctx; } ;
struct TYPE_3__ {scalar_t__ silence_option_deprecations; } ;
typedef TYPE_2__ MPContext ;


 int M_PROPERTY_ERROR ;


 int M_PROPERTY_NOT_IMPLEMENTED ;
 int M_PROPERTY_OK ;

 int M_PROPERTY_UNKNOWN ;
 int bstr0 (char const*) ;
 struct m_config_option* m_config_get_co (int ,int ) ;
 struct m_config_option* m_config_get_co_raw (int ,int ) ;
 int m_config_set_option_raw_direct (int ,struct m_config_option*,void*,int ) ;
 int m_option_copy (struct m_option*,void*,int ) ;

__attribute__((used)) static int mp_property_generic_option(void *ctx, struct m_property *prop,
                                      int action, void *arg)
{
    MPContext *mpctx = ctx;
    const char *optname = prop->name;
    struct m_config_option *opt;
    if (mpctx->command_ctx->silence_option_deprecations) {

        opt = m_config_get_co_raw(mpctx->mconfig, bstr0(optname));
    } else {
        opt = m_config_get_co(mpctx->mconfig, bstr0(optname));
    }

    if (!opt)
        return M_PROPERTY_UNKNOWN;

    switch (action) {
    case 129:
        *(struct m_option *)arg = *(opt->opt);
        return M_PROPERTY_OK;
    case 130:
        if (!opt->data)
            return M_PROPERTY_NOT_IMPLEMENTED;
        m_option_copy(opt->opt, arg, opt->data);
        return M_PROPERTY_OK;
    case 128:
        if (m_config_set_option_raw_direct(mpctx->mconfig, opt, arg, 0) < 0)
            return M_PROPERTY_ERROR;
        return M_PROPERTY_OK;
    }
    return M_PROPERTY_NOT_IMPLEMENTED;
}
