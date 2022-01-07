
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctx; } ;
typedef int OPENSSL_CTX ;
typedef TYPE_1__ CRYPTO_EX_DATA ;



OPENSSL_CTX *crypto_ex_data_get_openssl_ctx(const CRYPTO_EX_DATA *ad)
{
    return ad->ctx;
}
