
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int maskHash; int maskGenAlgorithm; int hashAlgorithm; int * saltLength; } ;
typedef TYPE_1__ RSA_PSS_PARAMS ;
typedef int EVP_MD ;


 int * ASN1_INTEGER_new () ;
 int ASN1_INTEGER_set (int *,int) ;
 int RSA_PSS_PARAMS_free (TYPE_1__*) ;
 TYPE_1__* RSA_PSS_PARAMS_new () ;
 int rsa_md_to_algor (int *,int const*) ;
 int rsa_md_to_mgf1 (int *,int const*) ;

RSA_PSS_PARAMS *rsa_pss_params_create(const EVP_MD *sigmd,
                                      const EVP_MD *mgf1md, int saltlen)
{
    RSA_PSS_PARAMS *pss = RSA_PSS_PARAMS_new();

    if (pss == ((void*)0))
        goto err;
    if (saltlen != 20) {
        pss->saltLength = ASN1_INTEGER_new();
        if (pss->saltLength == ((void*)0))
            goto err;
        if (!ASN1_INTEGER_set(pss->saltLength, saltlen))
            goto err;
    }
    if (!rsa_md_to_algor(&pss->hashAlgorithm, sigmd))
        goto err;
    if (mgf1md == ((void*)0))
        mgf1md = sigmd;
    if (!rsa_md_to_mgf1(&pss->maskGenAlgorithm, mgf1md))
        goto err;
    if (!rsa_md_to_algor(&pss->maskHash, mgf1md))
        goto err;
    return pss;
 err:
    RSA_PSS_PARAMS_free(pss);
    return ((void*)0);
}
