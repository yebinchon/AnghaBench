
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_config_option {int name; } ;
struct m_config {int num_opts; struct m_config_option* opts; } ;
struct bstr {int len; } ;


 struct bstr bstr0 (int ) ;
 scalar_t__ bstrcmp (struct bstr,struct bstr) ;

struct m_config_option *m_config_get_co_raw(const struct m_config *config,
                                            struct bstr name)
{
    if (!name.len)
        return ((void*)0);

    for (int n = 0; n < config->num_opts; n++) {
        struct m_config_option *co = &config->opts[n];
        struct bstr coname = bstr0(co->name);
        if (bstrcmp(coname, name) == 0)
            return co;
    }

    return ((void*)0);
}
