
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pkey_asn1_meths; } ;
typedef int ENGINE_PKEY_ASN1_METHS_PTR ;
typedef TYPE_1__ ENGINE ;



ENGINE_PKEY_ASN1_METHS_PTR ENGINE_get_pkey_asn1_meths(const ENGINE *e)
{
    return e->pkey_asn1_meths;
}
