
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMS_SignerInfo ;
typedef int CMS_ReceiptRequest ;


 int CMS_F_CMS_ADD1_RECEIPTREQUEST ;
 int CMS_signed_add1_attr_by_NID (int *,int ,int ,unsigned char*,int) ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int NID_id_smime_aa_receiptRequest ;
 int OPENSSL_free (unsigned char*) ;
 int V_ASN1_SEQUENCE ;
 int i2d_CMS_ReceiptRequest (int *,unsigned char**) ;

int CMS_add1_ReceiptRequest(CMS_SignerInfo *si, CMS_ReceiptRequest *rr)
{
    unsigned char *rrder = ((void*)0);
    int rrderlen, r = 0;

    rrderlen = i2d_CMS_ReceiptRequest(rr, &rrder);
    if (rrderlen < 0)
        goto merr;

    if (!CMS_signed_add1_attr_by_NID(si, NID_id_smime_aa_receiptRequest,
                                     V_ASN1_SEQUENCE, rrder, rrderlen))
        goto merr;

    r = 1;

 merr:
    if (!r)
        CMSerr(CMS_F_CMS_ADD1_RECEIPTREQUEST, ERR_R_MALLOC_FAILURE);

    OPENSSL_free(rrder);

    return r;

}
