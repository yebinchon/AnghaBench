
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;
struct mp_log {int dummy; } ;
struct m_obj_settings {char** attribs; scalar_t__ name; } ;
struct m_obj_desc {int dummy; } ;
struct m_config {int dummy; } ;


 struct m_config* m_config_from_obj_desc (void*,struct mp_log*,struct mpv_global*,struct m_obj_desc*) ;
 scalar_t__ m_config_set_obj_params (struct m_config*,struct mp_log*,struct mpv_global*,struct m_obj_desc*,char**) ;
 scalar_t__ strcmp (scalar_t__,char const*) ;
 int talloc_free (struct m_config*) ;

struct m_config *m_config_from_obj_desc_and_args(void *ta_parent,
    struct mp_log *log, struct mpv_global *global, struct m_obj_desc *desc,
    const char *name, struct m_obj_settings *defaults, char **args)
{
    struct m_config *config = m_config_from_obj_desc(ta_parent, log, global, desc);

    for (int n = 0; defaults && defaults[n].name; n++) {
        struct m_obj_settings *entry = &defaults[n];
        if (name && strcmp(entry->name, name) == 0) {
            if (m_config_set_obj_params(config, log, global, desc, entry->attribs) < 0)
                goto error;
        }
    }

    if (m_config_set_obj_params(config, log, global, desc, args) < 0)
        goto error;

    return config;
error:
    talloc_free(config);
    return ((void*)0);
}
