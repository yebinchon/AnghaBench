
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
typedef int ASN1_ITEM ;


 int ASN1_F_ASN1_ITEM_I2D_BIO ;
 int ASN1_item_i2d (void const*,unsigned char**,int const*) ;
 int ASN1err (int ,int ) ;
 int BIO_write (int *,unsigned char*,int) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;

int ASN1_item_i2d_bio(const ASN1_ITEM *it, BIO *out, const void *x)
{
    unsigned char *b = ((void*)0);
    int i, j = 0, n, ret = 1;

    n = ASN1_item_i2d(x, &b, it);
    if (b == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_ITEM_I2D_BIO, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    for (;;) {
        i = BIO_write(out, &(b[j]), n);
        if (i == n)
            break;
        if (i <= 0) {
            ret = 0;
            break;
        }
        j += i;
        n -= i;
    }
    OPENSSL_free(b);
    return ret;
}
