
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_csp_params {int dummy; } ;
struct mp_csp_equalizer_state {int dummy; } ;
struct mp_csp_equalizer_opts {int dummy; } ;
struct m_config_cache {struct mp_csp_equalizer_opts* opts; } ;


 int m_config_cache_update (struct m_config_cache*) ;
 int mp_csp_copy_equalizer_values (struct mp_csp_params*,struct mp_csp_equalizer_opts*) ;

void mp_csp_equalizer_state_get(struct mp_csp_equalizer_state *state,
                                struct mp_csp_params *params)
{
    struct m_config_cache *c = (struct m_config_cache *)state;
    m_config_cache_update(c);
    struct mp_csp_equalizer_opts *opts = c->opts;
    mp_csp_copy_equalizer_values(params, opts);
}
