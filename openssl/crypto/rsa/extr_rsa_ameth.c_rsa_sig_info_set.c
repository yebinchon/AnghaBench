
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int X509_SIG_INFO ;
struct TYPE_4__ {int algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
typedef int RSA_PSS_PARAMS ;
typedef int EVP_MD ;
typedef int ASN1_STRING ;


 int EVP_MD_size (int const*) ;
 int EVP_MD_type (int const*) ;
 scalar_t__ EVP_PKEY_RSA_PSS ;
 int NID_sha256 ;
 int NID_sha384 ;
 int NID_sha512 ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int RSA_PSS_PARAMS_free (int *) ;
 scalar_t__ X509_SIG_INFO_TLS ;
 int X509_SIG_INFO_set (int *,int,scalar_t__,int,scalar_t__) ;
 int * rsa_pss_decode (TYPE_1__ const*) ;
 int rsa_pss_get_param (int *,int const**,int const**,int*) ;

__attribute__((used)) static int rsa_sig_info_set(X509_SIG_INFO *siginf, const X509_ALGOR *sigalg,
                            const ASN1_STRING *sig)
{
    int rv = 0;
    int mdnid, saltlen;
    uint32_t flags;
    const EVP_MD *mgf1md = ((void*)0), *md = ((void*)0);
    RSA_PSS_PARAMS *pss;


    if (OBJ_obj2nid(sigalg->algorithm) != EVP_PKEY_RSA_PSS)
        return 0;

    pss = rsa_pss_decode(sigalg);
    if (!rsa_pss_get_param(pss, &md, &mgf1md, &saltlen))
        goto err;
    mdnid = EVP_MD_type(md);




    if ((mdnid == NID_sha256 || mdnid == NID_sha384 || mdnid == NID_sha512)
            && mdnid == EVP_MD_type(mgf1md) && saltlen == EVP_MD_size(md))
        flags = X509_SIG_INFO_TLS;
    else
        flags = 0;

    X509_SIG_INFO_set(siginf, mdnid, EVP_PKEY_RSA_PSS, EVP_MD_size(md) * 4,
                      flags);
    rv = 1;
    err:
    RSA_PSS_PARAMS_free(pss);
    return rv;
}
