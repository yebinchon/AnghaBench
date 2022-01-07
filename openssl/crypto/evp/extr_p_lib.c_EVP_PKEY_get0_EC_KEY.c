
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ec; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int EC_KEY ;


 int EVP_F_EVP_PKEY_GET0_EC_KEY ;
 scalar_t__ EVP_PKEY_EC ;
 int EVP_R_EXPECTING_A_EC_KEY ;
 int EVPerr (int ,int ) ;

EC_KEY *EVP_PKEY_get0_EC_KEY(const EVP_PKEY *pkey)
{
    if (pkey->type != EVP_PKEY_EC) {
        EVPerr(EVP_F_EVP_PKEY_GET0_EC_KEY, EVP_R_EXPECTING_A_EC_KEY);
        return ((void*)0);
    }
    return pkey->pkey.ec;
}
