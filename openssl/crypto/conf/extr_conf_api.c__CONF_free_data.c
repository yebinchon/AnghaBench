
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ CONF ;


 int lh_CONF_VALUE_doall (int *,int ) ;
 int lh_CONF_VALUE_doall_LH_CONF_VALUE (int *,int ,int *) ;
 int lh_CONF_VALUE_free (int *) ;
 int lh_CONF_VALUE_set_down_load (int *,int ) ;
 int value_free_hash ;
 int value_free_stack_doall ;

void _CONF_free_data(CONF *conf)
{
    if (conf == ((void*)0) || conf->data == ((void*)0))
        return;


    lh_CONF_VALUE_set_down_load(conf->data, 0);
    lh_CONF_VALUE_doall_LH_CONF_VALUE(conf->data, value_free_hash, conf->data);






    lh_CONF_VALUE_doall(conf->data, value_free_stack_doall);
    lh_CONF_VALUE_free(conf->data);
}
