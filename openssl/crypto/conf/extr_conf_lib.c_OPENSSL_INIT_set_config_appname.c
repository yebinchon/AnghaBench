
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* appname; } ;
typedef TYPE_1__ OPENSSL_INIT_SETTINGS ;


 int free (char*) ;
 char* strdup (char const*) ;

int OPENSSL_INIT_set_config_appname(OPENSSL_INIT_SETTINGS *settings,
                                    const char *appname)
{
    char *newappname = ((void*)0);

    if (appname != ((void*)0)) {
        newappname = strdup(appname);
        if (newappname == ((void*)0))
            return 0;
    }

    free(settings->appname);
    settings->appname = newappname;

    return 1;
}
