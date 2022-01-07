
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_CMP_PKIHEADER ;
typedef int OSSL_CMP_ITAV ;
typedef int ASN1_TYPE ;


 scalar_t__ ASN1_NULL_new () ;
 int ASN1_TYPE_free (int *) ;
 int NID_id_it_implicitConfirm ;
 int OBJ_nid2obj (int ) ;
 int * OSSL_CMP_ITAV_create (int ,int *) ;
 int OSSL_CMP_ITAV_free (int *) ;
 int ossl_assert (int ) ;
 int ossl_cmp_hdr_generalInfo_push0_item (int *,int *) ;

int ossl_cmp_hdr_set_implicitConfirm(OSSL_CMP_PKIHEADER *hdr)
{
    OSSL_CMP_ITAV *itav;
    ASN1_TYPE *asn1null;

    if (!ossl_assert(hdr != ((void*)0)))
        return 0;
    asn1null = (ASN1_TYPE *)ASN1_NULL_new();
    if (asn1null == ((void*)0))
        return 0;
    if ((itav = OSSL_CMP_ITAV_create(OBJ_nid2obj(NID_id_it_implicitConfirm),
                                     asn1null)) == ((void*)0))
        goto err;
    if (!ossl_cmp_hdr_generalInfo_push0_item(hdr, itav))
        goto err;
    return 1;

 err:
    ASN1_TYPE_free(asn1null);
    OSSL_CMP_ITAV_free(itav);
    return 0;
}
