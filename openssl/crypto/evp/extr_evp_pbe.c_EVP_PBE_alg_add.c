
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PBE_KEYGEN ;
typedef int EVP_MD ;
typedef int EVP_CIPHER ;


 int EVP_CIPHER_nid (int const*) ;
 int EVP_MD_type (int const*) ;
 int EVP_PBE_TYPE_OUTER ;
 int EVP_PBE_alg_add_type (int ,int,int,int,int *) ;

int EVP_PBE_alg_add(int nid, const EVP_CIPHER *cipher, const EVP_MD *md,
                    EVP_PBE_KEYGEN *keygen)
{
    int cipher_nid, md_nid;

    if (cipher)
        cipher_nid = EVP_CIPHER_nid(cipher);
    else
        cipher_nid = -1;
    if (md)
        md_nid = EVP_MD_type(md);
    else
        md_nid = -1;

    return EVP_PBE_alg_add_type(EVP_PBE_TYPE_OUTER, nid,
                                cipher_nid, md_nid, keygen);
}
