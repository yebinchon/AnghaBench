
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ trailerField; scalar_t__ saltLength; int maskHash; int hashAlgorithm; } ;
typedef TYPE_1__ RSA_PSS_PARAMS ;
typedef int EVP_MD ;


 int ASN1_INTEGER_get (scalar_t__) ;
 int RSA_F_RSA_PSS_GET_PARAM ;
 int RSA_R_INVALID_SALT_LENGTH ;
 int RSA_R_INVALID_TRAILER ;
 int RSAerr (int ,int ) ;
 int * rsa_algor_to_md (int ) ;

int rsa_pss_get_param(const RSA_PSS_PARAMS *pss, const EVP_MD **pmd,
                      const EVP_MD **pmgf1md, int *psaltlen)
{
    if (pss == ((void*)0))
        return 0;
    *pmd = rsa_algor_to_md(pss->hashAlgorithm);
    if (*pmd == ((void*)0))
        return 0;
    *pmgf1md = rsa_algor_to_md(pss->maskHash);
    if (*pmgf1md == ((void*)0))
        return 0;
    if (pss->saltLength) {
        *psaltlen = ASN1_INTEGER_get(pss->saltLength);
        if (*psaltlen < 0) {
            RSAerr(RSA_F_RSA_PSS_GET_PARAM, RSA_R_INVALID_SALT_LENGTH);
            return 0;
        }
    } else {
        *psaltlen = 20;
    }





    if (pss->trailerField && ASN1_INTEGER_get(pss->trailerField) != 1) {
        RSAerr(RSA_F_RSA_PSS_GET_PARAM, RSA_R_INVALID_TRAILER);
        return 0;
    }

    return 1;
}
