
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pp; } ;
typedef TYPE_1__ RSA_PRIME_INFO ;


 int BN_clear_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

void rsa_multip_info_free_ex(RSA_PRIME_INFO *pinfo)
{

    BN_clear_free(pinfo->pp);
    OPENSSL_free(pinfo);
}
