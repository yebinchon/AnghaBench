
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int modulus ;
typedef int exponent ;
typedef int STREAM ;


 int DEBUG (char*) ;
 int SEC_EXPONENT_SIZE ;
 int SEC_MAX_MODULUS_SIZE ;
 int SEC_RANDOM_SIZE ;
 int g_client_random ;
 int g_sec_crypted_random ;
 int g_server_public_key_len ;
 int generate_random (int ) ;
 int memset (int *,int ,int) ;
 int sec_generate_keys (int ,int *,int ) ;
 int sec_parse_crypt_info (int ,int *,int **,int *,int *) ;
 int sec_rsa_encrypt (int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static void
sec_process_crypt_info(STREAM s)
{
 uint8 *server_random = ((void*)0);
 uint8 modulus[SEC_MAX_MODULUS_SIZE];
 uint8 exponent[SEC_EXPONENT_SIZE];
 uint32 rc4_key_size;

 memset(modulus, 0, sizeof(modulus));
 memset(exponent, 0, sizeof(exponent));
 if (!sec_parse_crypt_info(s, &rc4_key_size, &server_random, modulus, exponent))
 {
  DEBUG(("Failed to parse crypt info\n"));
  return;
 }
 DEBUG(("Generating client random\n"));
 generate_random(g_client_random);
 sec_rsa_encrypt(g_sec_crypted_random, g_client_random, SEC_RANDOM_SIZE,
   g_server_public_key_len, modulus, exponent);
 sec_generate_keys(g_client_random, server_random, rc4_key_size);
}
