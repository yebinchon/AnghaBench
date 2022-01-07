
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpv_global {struct m_config_shadow* config; } ;
struct m_option {int dummy; } ;
struct m_config_shadow {int num_groups; struct m_config_group const* groups; } ;
struct m_config_group {TYPE_1__* group; } ;
struct TYPE_2__ {struct m_option const* opts; } ;



__attribute__((used)) static const struct m_config_group *find_group(struct mpv_global *global,
                                               const struct m_option *cfg)
{
    struct m_config_shadow *shadow = global->config;

    for (int n = 0; n < shadow->num_groups; n++) {
        if (shadow->groups[n].group->opts == cfg)
            return &shadow->groups[n];
    }

    return ((void*)0);
}
