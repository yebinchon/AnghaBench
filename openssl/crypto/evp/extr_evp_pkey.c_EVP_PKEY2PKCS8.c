
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int (* priv_encode ) (int *,TYPE_2__ const*) ;} ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef TYPE_2__ EVP_PKEY ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_EVP_PKEY2PKCS8 ;
 int EVP_R_METHOD_NOT_SUPPORTED ;
 int EVP_R_PRIVATE_KEY_ENCODE_ERROR ;
 int EVP_R_UNSUPPORTED_PRIVATE_KEY_ALGORITHM ;
 int EVPerr (int ,int ) ;
 int PKCS8_PRIV_KEY_INFO_free (int *) ;
 int * PKCS8_PRIV_KEY_INFO_new () ;
 int stub1 (int *,TYPE_2__ const*) ;

PKCS8_PRIV_KEY_INFO *EVP_PKEY2PKCS8(const EVP_PKEY *pkey)
{
    PKCS8_PRIV_KEY_INFO *p8 = PKCS8_PRIV_KEY_INFO_new();
    if (p8 == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY2PKCS8, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    if (pkey->ameth) {
        if (pkey->ameth->priv_encode) {
            if (!pkey->ameth->priv_encode(p8, pkey)) {
                EVPerr(EVP_F_EVP_PKEY2PKCS8, EVP_R_PRIVATE_KEY_ENCODE_ERROR);
                goto error;
            }
        } else {
            EVPerr(EVP_F_EVP_PKEY2PKCS8, EVP_R_METHOD_NOT_SUPPORTED);
            goto error;
        }
    } else {
        EVPerr(EVP_F_EVP_PKEY2PKCS8, EVP_R_UNSUPPORTED_PRIVATE_KEY_ALGORITHM);
        goto error;
    }
    return p8;
 error:
    PKCS8_PRIV_KEY_INFO_free(p8);
    return ((void*)0);
}
