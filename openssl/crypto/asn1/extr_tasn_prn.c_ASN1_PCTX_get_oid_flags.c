
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long oid_flags; } ;
typedef TYPE_1__ ASN1_PCTX ;



unsigned long ASN1_PCTX_get_oid_flags(const ASN1_PCTX *p)
{
    return p->oid_flags;
}
