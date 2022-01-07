
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* php_ini_path_override; } ;
typedef TYPE_1__ sapi_module_struct ;


 char* getenv (char*) ;

__attribute__((used)) static void init_sapi_from_env(sapi_module_struct *sapi_module)
{
    char *p;
    p = getenv("LSPHPRC");
    if (p)
        sapi_module->php_ini_path_override = p;
}
