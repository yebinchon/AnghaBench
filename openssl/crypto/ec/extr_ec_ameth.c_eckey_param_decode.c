
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int EC_F_ECKEY_PARAM_DECODE ;
 int ECerr (int ,int ) ;
 int ERR_R_EC_LIB ;
 int EVP_PKEY_assign_EC_KEY (int *,int *) ;
 int * d2i_ECParameters (int *,unsigned char const**,int) ;

__attribute__((used)) static int eckey_param_decode(EVP_PKEY *pkey,
                              const unsigned char **pder, int derlen)
{
    EC_KEY *eckey;

    if ((eckey = d2i_ECParameters(((void*)0), pder, derlen)) == ((void*)0)) {
        ECerr(EC_F_ECKEY_PARAM_DECODE, ERR_R_EC_LIB);
        return 0;
    }
    EVP_PKEY_assign_EC_KEY(pkey, eckey);
    return 1;
}
