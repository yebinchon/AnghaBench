
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int sealed_buffer ;
typedef int STREAM ;


 int LICENCE_HWID_SIZE ;
 int LICENCE_SIGNATURE_SIZE ;
 int LICENCE_TOKEN_SIZE ;
 scalar_t__ g_licence_key ;
 int g_licence_sign_key ;
 int licence_generate_hwid (int *) ;
 int licence_parse_platform_challenge (int ,int **,int **) ;
 int licence_send_platform_challenge_response (int *,int *,int *) ;
 int memcpy (int *,int *,int) ;
 int rdssl_rc4_crypt (void*,char*,char*,int) ;
 void* rdssl_rc4_info_create () ;
 int rdssl_rc4_info_delete (void*) ;
 int rdssl_rc4_set_key (void*,char*,int) ;
 int sec_sign (int *,int,int ,int,int *,int) ;

__attribute__((used)) static void
licence_process_platform_challenge(STREAM s)
{
 uint8 *in_token = ((void*)0), *in_sig;
 uint8 out_token[LICENCE_TOKEN_SIZE], decrypt_token[LICENCE_TOKEN_SIZE];
 uint8 hwid[LICENCE_HWID_SIZE], crypt_hwid[LICENCE_HWID_SIZE];
 uint8 sealed_buffer[LICENCE_TOKEN_SIZE + LICENCE_HWID_SIZE];
 uint8 out_sig[LICENCE_SIGNATURE_SIZE];
 void * crypt_key;


 licence_parse_platform_challenge(s, &in_token, &in_sig);
 memcpy(out_token, in_token, LICENCE_TOKEN_SIZE);


 crypt_key = rdssl_rc4_info_create();
 rdssl_rc4_set_key(crypt_key, (char *)g_licence_key, 16);
 rdssl_rc4_crypt(crypt_key, (char *)in_token, (char *)decrypt_token, LICENCE_TOKEN_SIZE);
 rdssl_rc4_info_delete(crypt_key);


 licence_generate_hwid(hwid);
 memcpy(sealed_buffer, decrypt_token, LICENCE_TOKEN_SIZE);
 memcpy(sealed_buffer + LICENCE_TOKEN_SIZE, hwid, LICENCE_HWID_SIZE);
 sec_sign(out_sig, 16, g_licence_sign_key, 16, sealed_buffer, sizeof(sealed_buffer));


 crypt_key = rdssl_rc4_info_create();
 rdssl_rc4_set_key(crypt_key, (char *)g_licence_key, 16);
 rdssl_rc4_crypt(crypt_key, (char *)hwid, (char *)crypt_hwid, LICENCE_HWID_SIZE);

 licence_send_platform_challenge_response(out_token, crypt_hwid, out_sig);
}
