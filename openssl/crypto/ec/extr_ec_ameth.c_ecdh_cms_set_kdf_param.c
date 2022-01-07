
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_MD ;


 scalar_t__ EVP_PKEY_CTX_set_ecdh_cofactor_mode (int *,int) ;
 scalar_t__ EVP_PKEY_CTX_set_ecdh_kdf_md (int *,int const*) ;
 scalar_t__ EVP_PKEY_CTX_set_ecdh_kdf_type (int *,int ) ;
 int EVP_PKEY_ECDH_KDF_X9_63 ;
 int * EVP_get_digestbynid (int) ;
 int NID_dh_cofactor_kdf ;
 int NID_dh_std_kdf ;
 int NID_undef ;
 int OBJ_find_sigid_algs (int,int*,int*) ;

__attribute__((used)) static int ecdh_cms_set_kdf_param(EVP_PKEY_CTX *pctx, int eckdf_nid)
{
    int kdf_nid, kdfmd_nid, cofactor;
    const EVP_MD *kdf_md;
    if (eckdf_nid == NID_undef)
        return 0;


    if (!OBJ_find_sigid_algs(eckdf_nid, &kdfmd_nid, &kdf_nid))
        return 0;

    if (kdf_nid == NID_dh_std_kdf)
        cofactor = 0;
    else if (kdf_nid == NID_dh_cofactor_kdf)
        cofactor = 1;
    else
        return 0;

    if (EVP_PKEY_CTX_set_ecdh_cofactor_mode(pctx, cofactor) <= 0)
        return 0;

    if (EVP_PKEY_CTX_set_ecdh_kdf_type(pctx, EVP_PKEY_ECDH_KDF_X9_63) <= 0)
        return 0;

    kdf_md = EVP_get_digestbynid(kdfmd_nid);
    if (!kdf_md)
        return 0;

    if (EVP_PKEY_CTX_set_ecdh_kdf_md(pctx, kdf_md) <= 0)
        return 0;
    return 1;
}
