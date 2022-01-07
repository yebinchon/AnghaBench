
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ESS_SIGNING_CERT_V2 ;
typedef int CMS_SignerInfo ;
typedef int ASN1_STRING ;


 int ASN1_STRING_free (int *) ;
 int * ASN1_STRING_new () ;
 int ASN1_STRING_set (int *,unsigned char*,int) ;
 int CMS_F_CMS_ADD1_SIGNING_CERT_V2 ;
 int CMS_signed_add1_attr_by_NID (int *,int ,int ,int *,int) ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int NID_id_smime_aa_signingCertificateV2 ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int V_ASN1_SEQUENCE ;
 int i2d_ESS_SIGNING_CERT_V2 (int *,unsigned char**) ;

int cms_add1_signing_cert_v2(CMS_SignerInfo *si, ESS_SIGNING_CERT_V2 *sc)
{
    ASN1_STRING *seq = ((void*)0);
    unsigned char *p, *pp;
    int len;


    len = i2d_ESS_SIGNING_CERT_V2(sc, ((void*)0));
    if ((pp = OPENSSL_malloc(len)) == ((void*)0))
        goto err;
    p = pp;
    i2d_ESS_SIGNING_CERT_V2(sc, &p);
    if (!(seq = ASN1_STRING_new()) || !ASN1_STRING_set(seq, pp, len))
        goto err;
    OPENSSL_free(pp);
    pp = ((void*)0);
    if (!CMS_signed_add1_attr_by_NID(si, NID_id_smime_aa_signingCertificateV2,
                                     V_ASN1_SEQUENCE, seq, -1))
        goto err;
    ASN1_STRING_free(seq);
    return 1;
 err:
    CMSerr(CMS_F_CMS_ADD1_SIGNING_CERT_V2, ERR_R_MALLOC_FAILURE);
    ASN1_STRING_free(seq);
    OPENSSL_free(pp);
    return 0;
}
