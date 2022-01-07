
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_3__ {int length; int data; } ;
typedef int EVP_MD ;
typedef TYPE_1__ ASN1_BIT_STRING ;


 int EVP_Digest (int ,int ,unsigned char*,unsigned int*,int const*,int *) ;
 TYPE_1__* X509_get0_pubkey_bitstr (int const*) ;

int X509_pubkey_digest(const X509 *data, const EVP_MD *type,
                       unsigned char *md, unsigned int *len)
{
    ASN1_BIT_STRING *key;
    key = X509_get0_pubkey_bitstr(data);
    if (!key)
        return 0;
    return EVP_Digest(key->data, key->length, md, len, type, ((void*)0));
}
