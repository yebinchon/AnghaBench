
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int CHACHA20_BLKLEN ;
 int CHACHA20_FLAGS ;
 int CHACHA20_IVLEN ;
 int CHACHA20_KEYLEN ;
 int cipher_generic_get_params (int *,int ,int ,int,int,int) ;

__attribute__((used)) static int chacha20_get_params(OSSL_PARAM params[])
{
    return cipher_generic_get_params(params, 0, CHACHA20_FLAGS,
                                     CHACHA20_KEYLEN * 8,
                                     CHACHA20_BLKLEN * 8,
                                     CHACHA20_IVLEN * 8);
}
