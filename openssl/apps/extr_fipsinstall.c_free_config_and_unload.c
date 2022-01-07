
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int CONF_modules_unload (int) ;
 int NCONF_free (int *) ;

__attribute__((used)) static void free_config_and_unload(CONF *conf)
{
    if (conf != ((void*)0)) {
        NCONF_free(conf);
        CONF_modules_unload(1);
    }
}
