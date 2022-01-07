
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pkey_id; int pkey_base_id; int pkey_flags; void* pem_str; void* info; } ;
typedef TYPE_1__ EVP_PKEY_ASN1_METHOD ;


 int ASN1_PKEY_DYNAMIC ;
 int EVP_PKEY_asn1_free (TYPE_1__*) ;
 void* OPENSSL_strdup (char const*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

EVP_PKEY_ASN1_METHOD *EVP_PKEY_asn1_new(int id, int flags,
                                        const char *pem_str, const char *info)
{
    EVP_PKEY_ASN1_METHOD *ameth = OPENSSL_zalloc(sizeof(*ameth));

    if (ameth == ((void*)0))
        return ((void*)0);

    ameth->pkey_id = id;
    ameth->pkey_base_id = id;
    ameth->pkey_flags = flags | ASN1_PKEY_DYNAMIC;

    if (info) {
        ameth->info = OPENSSL_strdup(info);
        if (!ameth->info)
            goto err;
    }

    if (pem_str) {
        ameth->pem_str = OPENSSL_strdup(pem_str);
        if (!ameth->pem_str)
            goto err;
    }

    return ameth;

 err:
    EVP_PKEY_asn1_free(ameth);
    return ((void*)0);

}
