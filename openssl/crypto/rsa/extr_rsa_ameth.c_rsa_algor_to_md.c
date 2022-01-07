
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
typedef int EVP_MD ;


 int * EVP_get_digestbyobj (int ) ;
 int const* EVP_sha1 () ;
 int RSA_F_RSA_ALGOR_TO_MD ;
 int RSA_R_UNKNOWN_DIGEST ;
 int RSAerr (int ,int ) ;

__attribute__((used)) static const EVP_MD *rsa_algor_to_md(X509_ALGOR *alg)
{
    const EVP_MD *md;

    if (!alg)
        return EVP_sha1();
    md = EVP_get_digestbyobj(alg->algorithm);
    if (md == ((void*)0))
        RSAerr(RSA_F_RSA_ALGOR_TO_MD, RSA_R_UNKNOWN_DIGEST);
    return md;
}
