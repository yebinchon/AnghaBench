
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int settings ;
struct TYPE_4__ {int flags; int appname; } ;
typedef TYPE_1__ OPENSSL_INIT_SETTINGS ;


 int DEFAULT_CONF_MFLAGS ;
 int OPENSSL_INIT_LOAD_CONFIG ;
 int OPENSSL_init_crypto (int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int strdup (char const*) ;

void OPENSSL_config(const char *appname)
{
    OPENSSL_INIT_SETTINGS settings;

    memset(&settings, 0, sizeof(settings));
    if (appname != ((void*)0))
        settings.appname = strdup(appname);
    settings.flags = DEFAULT_CONF_MFLAGS;
    OPENSSL_init_crypto(OPENSSL_INIT_LOAD_CONFIG, &settings);
}
