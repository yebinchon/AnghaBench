
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ OPENSSL_INIT_SETTINGS ;


 int DEFAULT_CONF_MFLAGS ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

OPENSSL_INIT_SETTINGS *OPENSSL_INIT_new(void)
{
    OPENSSL_INIT_SETTINGS *ret = malloc(sizeof(*ret));

    if (ret == ((void*)0))
        return ((void*)0);

    memset(ret, 0, sizeof(*ret));
    ret->flags = DEFAULT_CONF_MFLAGS;

    return ret;
}
