
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int tbuf ;
typedef int r ;
typedef scalar_t__ int64_t ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ ASN1_STRING ;


 int ASN1_STRING_set (TYPE_1__*,unsigned char*,int) ;
 int V_ASN1_NEG ;
 size_t asn1_put_uint64 (unsigned char*,scalar_t__) ;

__attribute__((used)) static int asn1_string_set_int64(ASN1_STRING *a, int64_t r, int itype)
{
    unsigned char tbuf[sizeof(r)];
    size_t off;

    a->type = itype;
    if (r < 0) {





        off = asn1_put_uint64(tbuf, 0 - (uint64_t)r);
        a->type |= V_ASN1_NEG;
    } else {
        off = asn1_put_uint64(tbuf, r);
        a->type &= ~V_ASN1_NEG;
    }
    return ASN1_STRING_set(a, tbuf + off, sizeof(tbuf) - off);
}
