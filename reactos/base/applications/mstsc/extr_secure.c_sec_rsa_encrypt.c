
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;


 int rdssl_mod_exp (char*,int,char*,int,char*,int,char*,int) ;

__attribute__((used)) static void
sec_rsa_encrypt(uint8 * out, uint8 * in, int len, uint32 modulus_size, uint8 * modulus,
  uint8 * exponent)
{
 rdssl_mod_exp((char *)out, 64, (char *)in, 32, (char *)modulus, 64, (char *)exponent, 4);
}
