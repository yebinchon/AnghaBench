
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; int enc_offset; } ;
struct TYPE_4__ {TYPE_2__* funcs; } ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_ITEM ;
typedef int ASN1_ENCODING ;
typedef TYPE_2__ ASN1_AUX ;


 int ASN1_AFLG_ENCODING ;
 int * offset2ptr (int *,int ) ;

__attribute__((used)) static ASN1_ENCODING *asn1_get_enc_ptr(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
    const ASN1_AUX *aux;

    if (pval == ((void*)0) || *pval == ((void*)0))
        return ((void*)0);
    aux = it->funcs;
    if (aux == ((void*)0) || (aux->flags & ASN1_AFLG_ENCODING) == 0)
        return ((void*)0);
    return offset2ptr(*pval, aux->enc_offset);
}
