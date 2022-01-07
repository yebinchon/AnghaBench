
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;
struct mp_csp_equalizer_state {int dummy; } ;
struct m_config_cache {int dummy; } ;


 struct m_config_cache* m_config_cache_alloc (void*,struct mpv_global*,int *) ;
 int mp_csp_equalizer_conf ;

struct mp_csp_equalizer_state *mp_csp_equalizer_create(void *ta_parent,
                                                    struct mpv_global *global)
{
    struct m_config_cache *c = m_config_cache_alloc(ta_parent, global,
                                                    &mp_csp_equalizer_conf);

    return (struct mp_csp_equalizer_state *)c;
}
