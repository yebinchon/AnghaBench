
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef scalar_t__ uint32 ;
typedef int STREAM ;
typedef int RD_BOOL ;


 int False ;
 scalar_t__ SEC_EXPONENT_SIZE ;
 scalar_t__ SEC_MAX_MODULUS_SIZE ;
 scalar_t__ SEC_MODULUS_SIZE ;
 scalar_t__ SEC_PADDING_SIZE ;
 scalar_t__ SEC_RSA_MAGIC ;
 int error (char*,scalar_t__) ;
 scalar_t__ g_server_public_key_len ;
 int in_uint32_le (int ,scalar_t__) ;
 int in_uint8a (int ,int *,scalar_t__) ;
 int in_uint8s (int ,scalar_t__) ;
 int s_check (int ) ;

__attribute__((used)) static RD_BOOL
sec_parse_public_key(STREAM s, uint8 * modulus, uint8 * exponent)
{
 uint32 magic, modulus_len;

 in_uint32_le(s, magic);
 if (magic != SEC_RSA_MAGIC)
 {
  error("RSA magic 0x%x\n", magic);
  return False;
 }

 in_uint32_le(s, modulus_len);
 modulus_len -= SEC_PADDING_SIZE;
 if ((modulus_len < SEC_MODULUS_SIZE) || (modulus_len > SEC_MAX_MODULUS_SIZE))
 {
  error("Bad server public key size (%u bits)\n", modulus_len * 8);
  return False;
 }

 in_uint8s(s, 8);
 in_uint8a(s, exponent, SEC_EXPONENT_SIZE);
 in_uint8a(s, modulus, modulus_len);
 in_uint8s(s, SEC_PADDING_SIZE);
 g_server_public_key_len = modulus_len;

 return s_check(s);
}
