
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_PUBKEY ;
typedef int X509_ALGOR ;
struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int pkey_id; } ;
typedef TYPE_2__ EVP_PKEY ;


 int KEY_OP_PUBLIC ;
 int X509_PUBKEY_get0_param (int *,unsigned char const**,int*,int **,int *) ;
 int ecx_key_op (TYPE_2__*,int ,int *,unsigned char const*,int,int ) ;

__attribute__((used)) static int ecx_pub_decode(EVP_PKEY *pkey, X509_PUBKEY *pubkey)
{
    const unsigned char *p;
    int pklen;
    X509_ALGOR *palg;

    if (!X509_PUBKEY_get0_param(((void*)0), &p, &pklen, &palg, pubkey))
        return 0;
    return ecx_key_op(pkey, pkey->ameth->pkey_id, palg, p, pklen,
                      KEY_OP_PUBLIC);
}
