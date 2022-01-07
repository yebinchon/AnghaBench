
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rsa; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;


 int RSA_check_key_ex (int ,int *) ;

__attribute__((used)) static int rsa_pkey_check(const EVP_PKEY *pkey)
{
    return RSA_check_key_ex(pkey->pkey.rsa, ((void*)0));
}
