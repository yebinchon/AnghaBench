
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int enc; scalar_t__ modified; } ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;
typedef TYPE_1__ ASN1_ENCODING ;


 TYPE_1__* asn1_get_const_enc_ptr (int const**,int const*) ;
 int memcpy (unsigned char*,int ,int) ;

int asn1_enc_restore(int *len, unsigned char **out, const ASN1_VALUE **pval,
                     const ASN1_ITEM *it)
{
    const ASN1_ENCODING *enc = asn1_get_const_enc_ptr(pval, it);

    if (enc == ((void*)0) || enc->modified)
        return 0;
    if (out) {
        memcpy(*out, enc->enc, enc->len);
        *out += enc->len;
    }
    if (len != ((void*)0))
        *len = enc->len;
    return 1;
}
