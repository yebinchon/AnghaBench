
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; } ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_TEMPLATE ;


 int const** offset2ptr (int const*,int ) ;

const ASN1_VALUE **asn1_get_const_field_ptr(const ASN1_VALUE **pval,
                                            const ASN1_TEMPLATE *tt)
{
    return offset2ptr(*pval, tt->offset);
}
