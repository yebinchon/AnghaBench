
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* it; } ;
typedef TYPE_1__ ASN1_SCTX ;
typedef int ASN1_ITEM ;



const ASN1_ITEM *ASN1_SCTX_get_item(ASN1_SCTX *p)
{
    return p->it;
}
