
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int data; } ;
struct TYPE_7__ {char* section; int * name; } ;
typedef TYPE_1__ CONF_VALUE ;
typedef TYPE_2__ CONF ;


 TYPE_1__* lh_CONF_VALUE_retrieve (int ,TYPE_1__*) ;

CONF_VALUE *_CONF_get_section(const CONF *conf, const char *section)
{
    CONF_VALUE *v, vv;

    if ((conf == ((void*)0)) || (section == ((void*)0)))
        return ((void*)0);
    vv.name = ((void*)0);
    vv.section = (char *)section;
    v = lh_CONF_VALUE_retrieve(conf->data, &vv);
    return v;
}
