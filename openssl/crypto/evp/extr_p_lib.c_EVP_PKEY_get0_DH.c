
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dh; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int DH ;


 int EVP_F_EVP_PKEY_GET0_DH ;
 scalar_t__ EVP_PKEY_DH ;
 scalar_t__ EVP_PKEY_DHX ;
 int EVP_R_EXPECTING_A_DH_KEY ;
 int EVPerr (int ,int ) ;

DH *EVP_PKEY_get0_DH(const EVP_PKEY *pkey)
{
    if (pkey->type != EVP_PKEY_DH && pkey->type != EVP_PKEY_DHX) {
        EVPerr(EVP_F_EVP_PKEY_GET0_DH, EVP_R_EXPECTING_A_DH_KEY);
        return ((void*)0);
    }
    return pkey->pkey.dh;
}
