
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int null_data ;
typedef int hwid ;
typedef int STREAM ;


 int DEBUG (char*) ;
 int LICENCE_HWID_SIZE ;
 int LICENCE_SIGNATURE_SIZE ;
 int LICENCE_TAG_LICENCE_INFO ;
 int LICENCE_TAG_NEW_LICENCE_REQUEST ;
 int SEC_MODULUS_SIZE ;
 int SEC_RANDOM_SIZE ;
 int g_hostname ;
 scalar_t__ g_licence_key ;
 int g_licence_sign_key ;
 int g_username ;
 int in_uint8p (int ,int *,int ) ;
 int licence_generate_hwid (int *) ;
 int licence_generate_keys (int *,int *,int *) ;
 int licence_info (int *,int *,int *,int,int *,int *) ;
 int licence_send_new_licence_request (int *,int *,int ,int ) ;
 int load_licence (int **) ;
 int memset (int *,int ,int) ;
 int rdssl_rc4_crypt (void*,char*,char*,int) ;
 void* rdssl_rc4_info_create () ;
 int rdssl_rc4_info_delete (void*) ;
 int rdssl_rc4_set_key (void*,char*,int) ;
 int sec_sign (int *,int,int ,int,int *,int) ;
 int xfree (int *) ;

__attribute__((used)) static void
licence_process_request(STREAM s)
{
 uint8 null_data[SEC_MODULUS_SIZE];
 uint8 *server_random;
 uint8 signature[LICENCE_SIGNATURE_SIZE];
 uint8 hwid[LICENCE_HWID_SIZE];
 uint8 *licence_data;
 int licence_size;
 void * crypt_key;


 in_uint8p(s, server_random, SEC_RANDOM_SIZE);



 memset(null_data, 0, sizeof(null_data));
 licence_generate_keys(null_data, server_random, null_data);

 licence_size = load_licence(&licence_data);
 if (licence_size > 0)
 {

  licence_generate_hwid(hwid);
  sec_sign(signature, 16, g_licence_sign_key, 16, hwid, sizeof(hwid));


  crypt_key = rdssl_rc4_info_create();
  rdssl_rc4_set_key(crypt_key, (char *)g_licence_key, 16);
  rdssl_rc4_crypt(crypt_key, (char *)hwid, (char *)hwid, sizeof(hwid));
  rdssl_rc4_info_delete(crypt_key);




  licence_info(null_data, null_data, licence_data, licence_size, hwid, signature);

  xfree(licence_data);
  return;
 }




 licence_send_new_licence_request(null_data, null_data, g_username, g_hostname);
}
