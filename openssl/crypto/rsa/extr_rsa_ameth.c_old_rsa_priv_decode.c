
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int pkey_id; } ;
typedef int RSA ;
typedef TYPE_2__ EVP_PKEY ;


 int ERR_R_RSA_LIB ;
 int EVP_PKEY_assign (TYPE_2__*,int ,int *) ;
 int RSA_F_OLD_RSA_PRIV_DECODE ;
 int RSAerr (int ,int ) ;
 int * d2i_RSAPrivateKey (int *,unsigned char const**,int) ;

__attribute__((used)) static int old_rsa_priv_decode(EVP_PKEY *pkey,
                               const unsigned char **pder, int derlen)
{
    RSA *rsa;

    if ((rsa = d2i_RSAPrivateKey(((void*)0), pder, derlen)) == ((void*)0)) {
        RSAerr(RSA_F_OLD_RSA_PRIV_DECODE, ERR_R_RSA_LIB);
        return 0;
    }
    EVP_PKEY_assign(pkey, pkey->ameth->pkey_id, rsa);
    return 1;
}
