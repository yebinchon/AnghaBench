
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int privkey; } ;
struct TYPE_6__ {TYPE_4__* ecx; } ;
struct TYPE_7__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;


 int KEYLEN (TYPE_2__*) ;
 int OPENSSL_free (TYPE_4__*) ;
 int OPENSSL_secure_clear_free (int ,int ) ;

__attribute__((used)) static void ecx_free(EVP_PKEY *pkey)
{
    if (pkey->pkey.ecx != ((void*)0))
        OPENSSL_secure_clear_free(pkey->pkey.ecx->privkey, KEYLEN(pkey));
    OPENSSL_free(pkey->pkey.ecx);
}
