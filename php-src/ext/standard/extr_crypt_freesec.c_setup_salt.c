
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct php_crypt_extended_data {int old_salt; int saltbits; } ;



__attribute__((used)) static void
setup_salt(uint32_t salt, struct php_crypt_extended_data *data)
{
 uint32_t obit, saltbit, saltbits;
 int i;

 if (salt == data->old_salt)
  return;
 data->old_salt = salt;

 saltbits = 0;
 saltbit = 1;
 obit = 0x800000;
 for (i = 0; i < 24; i++) {
  if (salt & saltbit)
   saltbits |= obit;
  saltbit <<= 1;
  obit >>= 1;
 }
 data->saltbits = saltbits;
}
