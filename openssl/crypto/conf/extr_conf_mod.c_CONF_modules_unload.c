
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ links; int dso; } ;
typedef TYPE_1__ CONF_MODULE ;


 int CONF_modules_finish () ;
 int module_free (TYPE_1__*) ;
 int sk_CONF_MODULE_delete (int *,int) ;
 int sk_CONF_MODULE_free (int *) ;
 int sk_CONF_MODULE_num (int *) ;
 TYPE_1__* sk_CONF_MODULE_value (int *,int) ;
 int * supported_modules ;

void CONF_modules_unload(int all)
{
    int i;
    CONF_MODULE *md;
    CONF_modules_finish();

    for (i = sk_CONF_MODULE_num(supported_modules) - 1; i >= 0; i--) {
        md = sk_CONF_MODULE_value(supported_modules, i);

        if (((md->links > 0) || !md->dso) && !all)
            continue;

        (void)sk_CONF_MODULE_delete(supported_modules, i);
        module_free(md);
    }
    if (sk_CONF_MODULE_num(supported_modules) == 0) {
        sk_CONF_MODULE_free(supported_modules);
        supported_modules = ((void*)0);
    }
}
