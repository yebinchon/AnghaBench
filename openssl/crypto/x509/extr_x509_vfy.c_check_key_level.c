
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* param; } ;
typedef TYPE_2__ X509_STORE_CTX ;
typedef int X509 ;
struct TYPE_4__ {int auth_level; } ;
typedef int EVP_PKEY ;


 scalar_t__ EVP_PKEY_security_bits (int *) ;
 int NUM_AUTH_LEVELS ;
 int * X509_get0_pubkey (int *) ;
 scalar_t__* minbits_table ;

__attribute__((used)) static int check_key_level(X509_STORE_CTX *ctx, X509 *cert)
{
    EVP_PKEY *pkey = X509_get0_pubkey(cert);
    int level = ctx->param->auth_level;







    if (level <= 0)
        return 1;


    if (pkey == ((void*)0))
        return 0;

    if (level > NUM_AUTH_LEVELS)
        level = NUM_AUTH_LEVELS;

    return EVP_PKEY_security_bits(pkey) >= minbits_table[level - 1];
}
