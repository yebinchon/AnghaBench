
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* usr_data; } ;
typedef TYPE_1__ CONF_MODULE ;



void CONF_module_set_usr_data(CONF_MODULE *pmod, void *usr_data)
{
    pmod->usr_data = usr_data;
}
