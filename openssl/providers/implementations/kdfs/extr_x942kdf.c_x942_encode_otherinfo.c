
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctr ;
typedef int X509_ALGOR ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int ASN1_OCTET_STRING_free (int *) ;
 int * ASN1_OCTET_STRING_new () ;
 int ASN1_OCTET_STRING_set (int *,unsigned char*,size_t) ;
 int CMS_SharedInfo_encode (unsigned char**,int *,int *,size_t) ;
 scalar_t__ CRYPTO_memcmp (unsigned char*,unsigned char*,int) ;
 int * OBJ_dup (int ) ;
 int OBJ_nid2obj (int) ;
 int OPENSSL_free (unsigned char*) ;
 int V_ASN1_OBJECT ;
 int V_ASN1_OCTET_STRING ;
 int V_ASN1_SEQUENCE ;
 int X509_ALGOR_free (int *) ;
 int * X509_ALGOR_new () ;
 int X509_ALGOR_set0 (int *,int *,int ,int *) ;
 scalar_t__ skip_asn1 (unsigned char**,long*,int ) ;

__attribute__((used)) static int x942_encode_otherinfo(int nid, size_t keylen,
                                 const unsigned char *ukm, size_t ukmlen,
                                 unsigned char **der, size_t *der_len,
                                 unsigned char **out_ctr)
{
    unsigned char *p, *encoded = ((void*)0);
    int ret = 0, encoded_len;
    long tlen;

    static unsigned char ctr[4] = { 0x00, 0x00, 0x00, 0x01 };
    X509_ALGOR *ksi = ((void*)0);
    ASN1_OBJECT *alg_oid = ((void*)0);
    ASN1_OCTET_STRING *ctr_oct = ((void*)0), *ukm_oct = ((void*)0);


    ksi = X509_ALGOR_new();
    alg_oid = OBJ_dup(OBJ_nid2obj(nid));
    ctr_oct = ASN1_OCTET_STRING_new();
    if (ksi == ((void*)0)
        || alg_oid == ((void*)0)
        || ctr_oct == ((void*)0)
        || !ASN1_OCTET_STRING_set(ctr_oct, ctr, sizeof(ctr))
        || !X509_ALGOR_set0(ksi, alg_oid, V_ASN1_OCTET_STRING, ctr_oct))
        goto err;

    alg_oid = ((void*)0);
    ctr_oct = ((void*)0);


    if (ukm != ((void*)0)) {
        ukm_oct = ASN1_OCTET_STRING_new();
        if (ukm_oct == ((void*)0))
            goto err;
        ASN1_OCTET_STRING_set(ukm_oct, (unsigned char *)ukm, ukmlen);
    }

    encoded_len = CMS_SharedInfo_encode(&encoded, ksi, ukm_oct, keylen);
    if (encoded_len <= 0)
        goto err;


    p = encoded;
    tlen = (long)encoded_len;
    if (skip_asn1(&p, &tlen, V_ASN1_SEQUENCE)
        && skip_asn1(&p, &tlen, V_ASN1_SEQUENCE)
        && skip_asn1(&p, &tlen, V_ASN1_OBJECT)
        && skip_asn1(&p, &tlen, V_ASN1_OCTET_STRING)
        && CRYPTO_memcmp(p, ctr, 4) == 0) {
        *out_ctr = p;
        *der = encoded;
        *der_len = (size_t)encoded_len;
        ret = 1;
    }
err:
    if (ret != 1)
        OPENSSL_free(encoded);
    ASN1_OCTET_STRING_free(ctr_oct);
    ASN1_OCTET_STRING_free(ukm_oct);
    ASN1_OBJECT_free(alg_oid);
    X509_ALGOR_free(ksi);
    return ret;
}
