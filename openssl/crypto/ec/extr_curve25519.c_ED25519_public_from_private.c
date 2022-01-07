
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ge_p3 ;
typedef int az ;


 int OPENSSL_cleanse (int*,int) ;
 int SHA512 (int const*,int,int*) ;
 int SHA512_DIGEST_LENGTH ;
 int ge_p3_tobytes (int*,int *) ;
 int ge_scalarmult_base (int *,int*) ;

void ED25519_public_from_private(uint8_t out_public_key[32],
                                 const uint8_t private_key[32])
{
    uint8_t az[SHA512_DIGEST_LENGTH];
    ge_p3 A;

    SHA512(private_key, 32, az);

    az[0] &= 248;
    az[31] &= 63;
    az[31] |= 64;

    ge_scalarmult_base(&A, az);
    ge_p3_tobytes(out_public_key, &A);

    OPENSSL_cleanse(az, sizeof(az));
}
