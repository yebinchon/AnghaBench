
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int executable_location; } ;
typedef TYPE_1__ sapi_module_struct ;


 scalar_t__ FAILURE ;
 int SUCCESS ;
 int argv0 ;
 scalar_t__ php_module_startup (TYPE_1__*,int *,int ) ;

__attribute__((used)) static int php_lsapi_startup(sapi_module_struct *sapi_module)
{
    if (php_module_startup(sapi_module, ((void*)0), 0)==FAILURE) {
        return FAILURE;
    }
    argv0 = sapi_module->executable_location;
    return SUCCESS;
}
