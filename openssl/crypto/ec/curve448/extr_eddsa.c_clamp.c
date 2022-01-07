
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int COFACTOR ;
 int EDDSA_448_PRIVATE_BYTES ;

__attribute__((used)) static void clamp(uint8_t secret_scalar_ser[EDDSA_448_PRIVATE_BYTES])
{
    secret_scalar_ser[0] &= -COFACTOR;
    secret_scalar_ser[EDDSA_448_PRIVATE_BYTES - 1] = 0;
    secret_scalar_ser[EDDSA_448_PRIVATE_BYTES - 2] |= 0x80;
}
