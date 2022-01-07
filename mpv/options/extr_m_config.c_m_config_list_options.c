
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_config_option {int name; scalar_t__ is_hidden; } ;
struct m_config {int num_opts; struct m_config_option* opts; } ;


 int MP_TARRAY_APPEND (void*,char**,int,char*) ;
 char** talloc_new (void*) ;
 char* talloc_strdup (void*,int ) ;

char **m_config_list_options(void *ta_parent, const struct m_config *config)
{
    char **list = talloc_new(ta_parent);
    int count = 0;
    for (int i = 0; i < config->num_opts; i++) {
        struct m_config_option *co = &config->opts[i];
        if (co->is_hidden)
            continue;


        char *s = talloc_strdup(ta_parent, co->name);
        MP_TARRAY_APPEND(ta_parent, list, count, s);
    }
    MP_TARRAY_APPEND(ta_parent, list, count, ((void*)0));
    return list;
}
