
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int length; unsigned char* data; int type; } ;
typedef TYPE_1__ ASN1_STRING ;


 int ASN1_MASK_CANON ;
 int ASN1_STRING_copy (TYPE_1__*,TYPE_1__ const*) ;
 int ASN1_STRING_to_UTF8 (unsigned char**,TYPE_1__ const*) ;
 int ASN1_tag2bit (int ) ;
 int V_ASN1_UTF8STRING ;
 int ossl_isascii (unsigned char) ;
 scalar_t__ ossl_isspace (unsigned char) ;
 int ossl_tolower (unsigned char) ;

__attribute__((used)) static int asn1_string_canon(ASN1_STRING *out, const ASN1_STRING *in)
{
    unsigned char *to, *from;
    int len, i;


    if (!(ASN1_tag2bit(in->type) & ASN1_MASK_CANON)) {
        if (!ASN1_STRING_copy(out, in))
            return 0;
        return 1;
    }

    out->type = V_ASN1_UTF8STRING;
    out->length = ASN1_STRING_to_UTF8(&out->data, in);
    if (out->length == -1)
        return 0;

    to = out->data;
    from = to;

    len = out->length;
    while (len > 0 && ossl_isspace(*from)) {
        from++;
        len--;
    }

    to = from + len;


    while (len > 0 && ossl_isspace(to[-1])) {
        to--;
        len--;
    }

    to = out->data;

    i = 0;
    while (i < len) {

        if (!ossl_isascii(*from)) {
            *to++ = *from++;
            i++;
        }

        else if (ossl_isspace(*from)) {

            *to++ = ' ';





            do {
                from++;
                i++;
            }
            while (ossl_isspace(*from));
        } else {
            *to++ = ossl_tolower(*from);
            from++;
            i++;
        }
    }

    out->length = to - out->data;

    return 1;

}
