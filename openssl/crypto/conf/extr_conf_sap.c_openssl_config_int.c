
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* filename; char* appname; unsigned long flags; } ;
typedef TYPE_1__ OPENSSL_INIT_SETTINGS ;


 int CONF_modules_load_file (char const*,char const*,unsigned long) ;
 unsigned long DEFAULT_CONF_MFLAGS ;
 int ENGINE_load_builtin_engines () ;
 int ERR_clear_error () ;
 int OPENSSL_load_builtin_modules () ;
 int fprintf (int ,char*,char const*,char const*,unsigned long) ;
 int openssl_configured ;
 int stderr ;

int openssl_config_int(const OPENSSL_INIT_SETTINGS *settings)
{
    int ret = 0;
    const char *filename;
    const char *appname;
    unsigned long flags;

    if (openssl_configured)
        return 1;

    filename = settings ? settings->filename : ((void*)0);
    appname = settings ? settings->appname : ((void*)0);
    flags = settings ? settings->flags : DEFAULT_CONF_MFLAGS;






    OPENSSL_load_builtin_modules();


    ENGINE_load_builtin_engines();

    ERR_clear_error();

    ret = CONF_modules_load_file(filename, appname, flags);

    openssl_configured = 1;
    return ret;
}
