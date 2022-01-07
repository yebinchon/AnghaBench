
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nid; } ;
typedef TYPE_1__ ASN1_STRING_TABLE ;



__attribute__((used)) static int sk_table_cmp(const ASN1_STRING_TABLE *const *a,
                        const ASN1_STRING_TABLE *const *b)
{
    return (*a)->nid - (*b)->nid;
}
