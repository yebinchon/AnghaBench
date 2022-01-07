
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pkey_id; } ;
typedef TYPE_1__ EVP_PKEY_ASN1_METHOD ;


 TYPE_1__** OBJ_bsearch_ameth (TYPE_1__ const**,int ,int ) ;
 int OSSL_NELEM (int ) ;
 scalar_t__ app_methods ;
 int sk_EVP_PKEY_ASN1_METHOD_find (scalar_t__,TYPE_1__*) ;
 TYPE_1__ const* sk_EVP_PKEY_ASN1_METHOD_value (scalar_t__,int) ;
 int standard_methods ;

__attribute__((used)) static const EVP_PKEY_ASN1_METHOD *pkey_asn1_find(int type)
{
    EVP_PKEY_ASN1_METHOD tmp;
    const EVP_PKEY_ASN1_METHOD *t = &tmp, **ret;

    tmp.pkey_id = type;
    if (app_methods) {
        int idx;
        idx = sk_EVP_PKEY_ASN1_METHOD_find(app_methods, &tmp);
        if (idx >= 0)
            return sk_EVP_PKEY_ASN1_METHOD_value(app_methods, idx);
    }
    ret = OBJ_bsearch_ameth(&t, standard_methods, OSSL_NELEM(standard_methods));
    if (ret == ((void*)0) || *ret == ((void*)0))
        return ((void*)0);
    return *ret;
}
