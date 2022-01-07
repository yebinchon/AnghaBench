
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_config_option {int opt; } ;
struct m_config {int dummy; } ;
typedef int bstr ;


 int M_OPT_TYPE_OPTIONAL_PARAM ;
 int M_OPT_UNKNOWN ;
 struct m_config_option* m_config_mogrify_cli_opt (struct m_config*,int *,int*,int*) ;
 int m_option_required_params (int ) ;

int m_config_option_requires_param(struct m_config *config, bstr name)
{
    bool negate;
    int flags;
    struct m_config_option *co =
        m_config_mogrify_cli_opt(config, &name, &negate, &flags);

    if (!co)
        return M_OPT_UNKNOWN;

    if (negate || (flags & M_OPT_TYPE_OPTIONAL_PARAM))
        return 0;

    return m_option_required_params(co->opt);
}
