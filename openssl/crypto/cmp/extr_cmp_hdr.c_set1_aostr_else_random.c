
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_OCTET_STRING ;


 int CMP_R_FAILURE_OBTAINING_RANDOM ;
 int CMPerr (int ,int ) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 scalar_t__ RAND_bytes (unsigned char*,size_t) ;
 int ossl_cmp_asn1_octet_string_set1 (int **,int const*) ;
 int ossl_cmp_asn1_octet_string_set1_bytes (int **,unsigned char*,size_t) ;

__attribute__((used)) static int set1_aostr_else_random(ASN1_OCTET_STRING **tgt,
                                  const ASN1_OCTET_STRING *src, size_t len)
{
    unsigned char *bytes = ((void*)0);
    int res = 0;

    if (src == ((void*)0)) {
        if ((bytes = OPENSSL_malloc(len)) == ((void*)0))
            goto err;
        if (RAND_bytes(bytes, len) <= 0) {
            CMPerr(0, CMP_R_FAILURE_OBTAINING_RANDOM);
            goto err;
        }
        res = ossl_cmp_asn1_octet_string_set1_bytes(tgt, bytes, len);
    } else {
        res = ossl_cmp_asn1_octet_string_set1(tgt, src);
    }

 err:
    OPENSSL_free(bytes);
    return res;
}
