
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int g_rc4_decrypt_key ;
 int g_rc4_key_len ;
 scalar_t__ g_sec_decrypt_key ;
 int g_sec_decrypt_update_key ;
 int g_sec_decrypt_use_count ;
 int rdssl_rc4_crypt (int ,char*,char*,int) ;
 int rdssl_rc4_set_key (int ,char*,int ) ;
 int sec_update (scalar_t__,int ) ;

void
sec_decrypt(uint8 * data, int length)
{
 if (g_sec_decrypt_use_count == 4096)
 {
  sec_update(g_sec_decrypt_key, g_sec_decrypt_update_key);
  rdssl_rc4_set_key(g_rc4_decrypt_key, (char *)g_sec_decrypt_key, g_rc4_key_len);
  g_sec_decrypt_use_count = 0;
 }

 rdssl_rc4_crypt(g_rc4_decrypt_key,(char *)data, (char *)data, length);
 g_sec_decrypt_use_count++;
}
