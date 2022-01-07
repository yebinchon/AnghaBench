
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pkey_flags; int pkey_base_id; } ;
typedef TYPE_1__ EVP_PKEY_ASN1_METHOD ;
typedef int ENGINE ;


 int ASN1_PKEY_ALIAS ;
 TYPE_1__ const* ENGINE_get_pkey_asn1_meth (int *,int) ;
 int * ENGINE_get_pkey_asn1_meth_engine (int) ;
 TYPE_1__* pkey_asn1_find (int) ;

const EVP_PKEY_ASN1_METHOD *EVP_PKEY_asn1_find(ENGINE **pe, int type)
{
    const EVP_PKEY_ASN1_METHOD *t;

    for (;;) {
        t = pkey_asn1_find(type);
        if (!t || !(t->pkey_flags & ASN1_PKEY_ALIAS))
            break;
        type = t->pkey_base_id;
    }
    if (pe) {

        ENGINE *e;

        e = ENGINE_get_pkey_asn1_meth_engine(type);
        if (e) {
            *pe = e;
            return ENGINE_get_pkey_asn1_meth(e, type);
        }

        *pe = ((void*)0);
    }
    return t;
}
