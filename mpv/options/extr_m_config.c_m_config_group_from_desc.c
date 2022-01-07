
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;
struct mp_log {int dummy; } ;
struct m_obj_desc {int priv_size; int priv_defaults; int options; } ;
struct m_config_group {int group; } ;


 struct m_config_group* find_group (struct mpv_global*,int ) ;
 int memcpy (void*,int ,int ) ;
 void* mp_get_config_group (void*,struct mpv_global*,int ) ;
 void* talloc_zero_size (void*,int ) ;

void *m_config_group_from_desc(void *ta_parent, struct mp_log *log,
        struct mpv_global *global, struct m_obj_desc *desc, const char *name)
{
    const struct m_config_group *group = find_group(global, desc->options);
    if (group) {
        return mp_get_config_group(ta_parent, global, group->group);
    } else {
        void *d = talloc_zero_size(ta_parent, desc->priv_size);
        if (desc->priv_defaults)
            memcpy(d, desc->priv_defaults, desc->priv_size);
        return d;
    }
}
