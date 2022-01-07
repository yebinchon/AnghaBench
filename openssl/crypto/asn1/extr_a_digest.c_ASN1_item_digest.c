
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;
typedef int ASN1_ITEM ;


 int ASN1_item_i2d (void*,unsigned char**,int const*) ;
 int EVP_Digest (unsigned char*,int,unsigned char*,unsigned int*,int const*,int *) ;
 int OPENSSL_free (unsigned char*) ;

int ASN1_item_digest(const ASN1_ITEM *it, const EVP_MD *type, void *asn,
                     unsigned char *md, unsigned int *len)
{
    int i;
    unsigned char *str = ((void*)0);

    i = ASN1_item_i2d(asn, &str, it);
    if (!str)
        return 0;

    if (!EVP_Digest(str, i, md, len, type, ((void*)0))) {
        OPENSSL_free(str);
        return 0;
    }
    OPENSSL_free(str);
    return 1;
}
