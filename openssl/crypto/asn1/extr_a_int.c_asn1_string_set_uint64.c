
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int tbuf ;
typedef int r ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ ASN1_STRING ;


 int ASN1_STRING_set (TYPE_1__*,unsigned char*,int) ;
 size_t asn1_put_uint64 (unsigned char*,int ) ;

__attribute__((used)) static int asn1_string_set_uint64(ASN1_STRING *a, uint64_t r, int itype)
{
    unsigned char tbuf[sizeof(r)];
    size_t off;

    a->type = itype;
    off = asn1_put_uint64(tbuf, r);
    return ASN1_STRING_set(a, tbuf + off, sizeof(tbuf) - off);
}
