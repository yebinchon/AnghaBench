
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;


 int ASN1_PKEY_CTRL_SUPPORTS_MD_NID ;
 int EVP_PKEY_get_default_digest_nid (int *,int*) ;
 int evp_pkey_asn1_ctrl (int *,int ,int,int *) ;

int EVP_PKEY_supports_digest_nid(EVP_PKEY *pkey, int nid)
{
    int rv, default_nid;

    rv = evp_pkey_asn1_ctrl(pkey, ASN1_PKEY_CTRL_SUPPORTS_MD_NID, nid, ((void*)0));
    if (rv == -2) {




        rv = EVP_PKEY_get_default_digest_nid(pkey, &default_nid);
        if (rv == 2)
            return (nid == default_nid);

        if (rv == 0)
            return -1;
    }
    return rv;
}
