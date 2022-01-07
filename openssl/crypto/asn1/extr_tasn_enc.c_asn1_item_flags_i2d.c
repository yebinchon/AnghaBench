
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_F_ASN1_ITEM_FLAGS_I2D ;
 int ASN1_item_ex_i2d (int const**,unsigned char**,int const*,int,int) ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 unsigned char* OPENSSL_malloc (int) ;

__attribute__((used)) static int asn1_item_flags_i2d(const ASN1_VALUE *val, unsigned char **out,
                               const ASN1_ITEM *it, int flags)
{
    if (out != ((void*)0) && *out == ((void*)0)) {
        unsigned char *p, *buf;
        int len;

        len = ASN1_item_ex_i2d(&val, ((void*)0), it, -1, flags);
        if (len <= 0)
            return len;
        if ((buf = OPENSSL_malloc(len)) == ((void*)0)) {
            ASN1err(ASN1_F_ASN1_ITEM_FLAGS_I2D, ERR_R_MALLOC_FAILURE);
            return -1;
        }
        p = buf;
        ASN1_item_ex_i2d(&val, &p, it, -1, flags);
        *out = buf;
        return len;
    }

    return ASN1_item_ex_i2d(&val, out, it, -1, flags);
}
