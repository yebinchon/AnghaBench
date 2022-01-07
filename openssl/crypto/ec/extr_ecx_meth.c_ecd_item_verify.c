
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_ALGOR ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int ASN1_OBJECT ;
typedef int ASN1_ITEM ;
typedef int ASN1_BIT_STRING ;


 int EC_F_ECD_ITEM_VERIFY ;
 int EC_R_INVALID_ENCODING ;
 int ECerr (int ,int ) ;
 int EVP_DigestVerifyInit (int *,int *,int *,int *,int *) ;
 int NID_ED25519 ;
 int NID_ED448 ;
 int OBJ_obj2nid (int const*) ;
 int V_ASN1_UNDEF ;
 int X509_ALGOR_get0 (int const**,int*,int *,int *) ;

__attribute__((used)) static int ecd_item_verify(EVP_MD_CTX *ctx, const ASN1_ITEM *it, void *asn,
                           X509_ALGOR *sigalg, ASN1_BIT_STRING *str,
                           EVP_PKEY *pkey)
{
    const ASN1_OBJECT *obj;
    int ptype;
    int nid;


    X509_ALGOR_get0(&obj, &ptype, ((void*)0), sigalg);
    nid = OBJ_obj2nid(obj);
    if ((nid != NID_ED25519 && nid != NID_ED448) || ptype != V_ASN1_UNDEF) {
        ECerr(EC_F_ECD_ITEM_VERIFY, EC_R_INVALID_ENCODING);
        return 0;
    }

    if (!EVP_DigestVerifyInit(ctx, ((void*)0), ((void*)0), ((void*)0), pkey))
        return 0;

    return 2;
}
