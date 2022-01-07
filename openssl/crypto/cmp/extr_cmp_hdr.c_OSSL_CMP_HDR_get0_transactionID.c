
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * transactionID; } ;
typedef TYPE_1__ OSSL_CMP_PKIHEADER ;
typedef int ASN1_OCTET_STRING ;


 int CMP_R_NULL_ARGUMENT ;
 int CMPerr (int ,int ) ;

ASN1_OCTET_STRING *OSSL_CMP_HDR_get0_transactionID(const OSSL_CMP_PKIHEADER *hdr)
{
    if (hdr == ((void*)0)) {
        CMPerr(0, CMP_R_NULL_ARGUMENT);
        return ((void*)0);
    }
    return hdr->transactionID;
}
