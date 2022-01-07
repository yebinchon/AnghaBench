
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sname; } ;
typedef TYPE_1__ ASN1_ITEM ;


 TYPE_1__* ASN1_ITEM_ptr (int ) ;
 size_t OSSL_NELEM (int *) ;
 int * asn1_item_list ;
 scalar_t__ strcmp (int ,char const*) ;

const ASN1_ITEM *ASN1_ITEM_lookup(const char *name)
{
    size_t i;

    for (i = 0; i < OSSL_NELEM(asn1_item_list); i++) {
        const ASN1_ITEM *it = ASN1_ITEM_ptr(asn1_item_list[i]);

        if (strcmp(it->sname, name) == 0)
            return it;
    }
    return ((void*)0);
}
