
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;
typedef int OSSL_PARAM ;
typedef int OPENSSL_CTX ;
typedef int EVP_MD ;
typedef int EVP_KDF_CTX ;
typedef int EVP_KDF ;
typedef int ASN1_OBJECT ;


 int EVP_KDF_CTX_free (int *) ;
 int * EVP_KDF_CTX_new (int *) ;
 scalar_t__ EVP_KDF_CTX_set_params (int *,int *) ;
 scalar_t__ EVP_KDF_derive (int *,unsigned char*,size_t) ;
 int * EVP_KDF_fetch (int *,int ,int *) ;
 int EVP_KDF_free (int *) ;
 char* EVP_MD_name (int const*) ;
 int * EVP_MD_provider (int const*) ;
 int NID_undef ;
 char* OBJ_nid2sn (int) ;
 int OBJ_obj2nid (int *) ;
 int OSSL_KDF_NAME_X942KDF ;
 int OSSL_KDF_PARAM_CEK_ALG ;
 int OSSL_KDF_PARAM_DIGEST ;
 int OSSL_KDF_PARAM_KEY ;
 int OSSL_KDF_PARAM_UKM ;
 int OSSL_PARAM_construct_end () ;
 void* OSSL_PARAM_construct_octet_string (int ,unsigned char*,size_t) ;
 void* OSSL_PARAM_construct_utf8_string (int ,char*,scalar_t__) ;
 int * ossl_provider_library_context (int const*) ;
 scalar_t__ strlen (char const*) ;

int DH_KDF_X9_42(unsigned char *out, size_t outlen,
                 const unsigned char *Z, size_t Zlen,
                 ASN1_OBJECT *key_oid,
                 const unsigned char *ukm, size_t ukmlen, const EVP_MD *md)
{
    int ret = 0, nid;
    EVP_KDF_CTX *kctx = ((void*)0);
    EVP_KDF *kdf = ((void*)0);
    const char *oid_sn;
    OSSL_PARAM params[5], *p = params;
    const char *mdname = EVP_MD_name(md);
    const OSSL_PROVIDER *prov = EVP_MD_provider(md);
    OPENSSL_CTX *provctx = ossl_provider_library_context(prov);

    nid = OBJ_obj2nid(key_oid);
    if (nid == NID_undef)
        return 0;
    oid_sn = OBJ_nid2sn(nid);
    if (oid_sn == ((void*)0))
        return 0;

    kdf = EVP_KDF_fetch(provctx, OSSL_KDF_NAME_X942KDF, ((void*)0));
    if ((kctx = EVP_KDF_CTX_new(kdf)) == ((void*)0))
        goto err;
    *p++ = OSSL_PARAM_construct_utf8_string(OSSL_KDF_PARAM_DIGEST,
                                            (char *)mdname, strlen(mdname) + 1);
    *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_KEY,
                                             (unsigned char *)Z, Zlen);
    if (ukm != ((void*)0))
        *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_UKM,
                                                 (unsigned char *)ukm, ukmlen);
    *p++ = OSSL_PARAM_construct_utf8_string(OSSL_KDF_PARAM_CEK_ALG,
                                            (char *)oid_sn, strlen(oid_sn) + 1);
    *p = OSSL_PARAM_construct_end();
    ret = EVP_KDF_CTX_set_params(kctx, params) > 0
        && EVP_KDF_derive(kctx, out, outlen) > 0;
err:
    EVP_KDF_CTX_free(kctx);
    EVP_KDF_free(kdf);
    return ret;
}
