
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_ITEM ;


 int ASN1_F_ASN1_ITEM_DUP ;
 void* ASN1_item_d2i (int *,unsigned char const**,long,int const*) ;
 long ASN1_item_i2d (void const*,unsigned char**,int const*) ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;

void *ASN1_item_dup(const ASN1_ITEM *it, const void *x)
{
    unsigned char *b = ((void*)0);
    const unsigned char *p;
    long i;
    void *ret;

    if (x == ((void*)0))
        return ((void*)0);

    i = ASN1_item_i2d(x, &b, it);
    if (b == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_ITEM_DUP, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    p = b;
    ret = ASN1_item_d2i(((void*)0), &p, i, it);
    OPENSSL_free(b);
    return ret;
}
