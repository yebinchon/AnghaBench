
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pkey_id; } ;
typedef TYPE_1__ EVP_PKEY_ASN1_METHOD ;



__attribute__((used)) static int ameth_cmp(const EVP_PKEY_ASN1_METHOD *const *a,
                     const EVP_PKEY_ASN1_METHOD *const *b)
{
    return ((*a)->pkey_id - (*b)->pkey_id);
}
