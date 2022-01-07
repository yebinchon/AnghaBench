
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* appname; struct TYPE_4__* filename; } ;
typedef TYPE_1__ OPENSSL_INIT_SETTINGS ;


 int free (TYPE_1__*) ;

void OPENSSL_INIT_free(OPENSSL_INIT_SETTINGS *settings)
{
    free(settings->filename);
    free(settings->appname);
    free(settings);
}
