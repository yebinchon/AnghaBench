
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ CONF ;


 int conf_value_cmp ;
 int conf_value_hash ;
 int * lh_CONF_VALUE_new (int ,int ) ;

int _CONF_new_data(CONF *conf)
{
    if (conf == ((void*)0)) {
        return 0;
    }
    if (conf->data == ((void*)0)) {
        conf->data = lh_CONF_VALUE_new(conf_value_hash, conf_value_cmp);
        if (conf->data == ((void*)0))
            return 0;
    }
    return 1;
}
