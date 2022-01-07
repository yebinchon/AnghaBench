
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* cert; } ;
struct TYPE_6__ {TYPE_1__* key; } ;
struct TYPE_5__ {int * privatekey; } ;
typedef TYPE_3__ SSL ;
typedef int EVP_PKEY ;



EVP_PKEY *SSL_get_privatekey(const SSL *s)
{
    if (s->cert != ((void*)0))
        return s->cert->key->privatekey;
    else
        return ((void*)0);
}
