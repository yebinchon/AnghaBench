
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int conf_init_func ;
typedef int conf_finish_func ;


 scalar_t__ module_add (int *,char const*,int *,int *) ;

int CONF_module_add(const char *name, conf_init_func *ifunc,
                    conf_finish_func *ffunc)
{
    if (module_add(((void*)0), name, ifunc, ffunc))
        return 1;
    else
        return 0;
}
