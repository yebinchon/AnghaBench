
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* stdname; } ;
typedef TYPE_1__ SSL_CIPHER ;



const char *SSL_CIPHER_standard_name(const SSL_CIPHER *c)
{
    if (c != ((void*)0))
        return c->stdname;
    return "(NONE)";
}
