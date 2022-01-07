
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * pp; int * t; int * d; int * r; } ;
typedef TYPE_1__ RSA_PRIME_INFO ;


 int BN_free (int *) ;
 void* BN_secure_new () ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int RSA_F_RSA_MULTIP_INFO_NEW ;
 int RSAerr (int ,int ) ;

RSA_PRIME_INFO *rsa_multip_info_new(void)
{
    RSA_PRIME_INFO *pinfo;


    if ((pinfo = OPENSSL_zalloc(sizeof(RSA_PRIME_INFO))) == ((void*)0)) {
        RSAerr(RSA_F_RSA_MULTIP_INFO_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    if ((pinfo->r = BN_secure_new()) == ((void*)0))
        goto err;
    if ((pinfo->d = BN_secure_new()) == ((void*)0))
        goto err;
    if ((pinfo->t = BN_secure_new()) == ((void*)0))
        goto err;
    if ((pinfo->pp = BN_secure_new()) == ((void*)0))
        goto err;

    return pinfo;

 err:
    BN_free(pinfo->r);
    BN_free(pinfo->d);
    BN_free(pinfo->t);
    BN_free(pinfo->pp);
    OPENSSL_free(pinfo);
    return ((void*)0);
}
