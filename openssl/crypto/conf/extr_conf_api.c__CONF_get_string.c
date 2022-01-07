
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
struct TYPE_6__ {char* name; char* section; char* value; } ;
typedef TYPE_1__ CONF_VALUE ;
typedef TYPE_2__ CONF ;


 TYPE_1__* lh_CONF_VALUE_retrieve (int ,TYPE_1__*) ;
 char* ossl_safe_getenv (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

char *_CONF_get_string(const CONF *conf, const char *section,
                       const char *name)
{
    CONF_VALUE *v, vv;
    char *p;

    if (name == ((void*)0))
        return ((void*)0);
    if (conf != ((void*)0)) {
        if (section != ((void*)0)) {
            vv.name = (char *)name;
            vv.section = (char *)section;
            v = lh_CONF_VALUE_retrieve(conf->data, &vv);
            if (v != ((void*)0))
                return v->value;
            if (strcmp(section, "ENV") == 0) {
                p = ossl_safe_getenv(name);
                if (p != ((void*)0))
                    return p;
            }
        }
        vv.section = "default";
        vv.name = (char *)name;
        v = lh_CONF_VALUE_retrieve(conf->data, &vv);
        if (v != ((void*)0))
            return v->value;
        else
            return ((void*)0);
    } else
        return ossl_safe_getenv(name);
}
