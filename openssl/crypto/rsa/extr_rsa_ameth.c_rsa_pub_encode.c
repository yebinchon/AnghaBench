
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509_PUBKEY ;
struct TYPE_6__ {int rsa; } ;
struct TYPE_8__ {TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_7__ {int pkey_id; } ;
typedef TYPE_3__ EVP_PKEY ;
typedef int ASN1_STRING ;


 int OBJ_nid2obj (int ) ;
 int OPENSSL_free (unsigned char*) ;
 scalar_t__ X509_PUBKEY_set0_param (int *,int ,int,int *,unsigned char*,int) ;
 int i2d_RSAPublicKey (int ,unsigned char**) ;
 int rsa_param_encode (TYPE_3__ const*,int **,int*) ;

__attribute__((used)) static int rsa_pub_encode(X509_PUBKEY *pk, const EVP_PKEY *pkey)
{
    unsigned char *penc = ((void*)0);
    int penclen;
    ASN1_STRING *str;
    int strtype;

    if (!rsa_param_encode(pkey, &str, &strtype))
        return 0;
    penclen = i2d_RSAPublicKey(pkey->pkey.rsa, &penc);
    if (penclen <= 0)
        return 0;
    if (X509_PUBKEY_set0_param(pk, OBJ_nid2obj(pkey->ameth->pkey_id),
                               strtype, str, penc, penclen))
        return 1;

    OPENSSL_free(penc);
    return 0;
}
