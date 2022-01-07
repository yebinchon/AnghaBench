
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int g_licence_key ;
 int g_licence_sign_key ;
 int memcpy (int ,int *,int) ;
 int sec_hash_16 (int ,int *,int *,int *) ;
 int sec_hash_48 (int *,int *,int *,int *,char) ;

__attribute__((used)) static void
licence_generate_keys(uint8 * client_random, uint8 * server_random, uint8 * pre_master_secret)
{
 uint8 master_secret[48];
 uint8 key_block[48];


 sec_hash_48(master_secret, pre_master_secret, client_random, server_random, 'A');
 sec_hash_48(key_block, master_secret, server_random, client_random, 'A');


 memcpy(g_licence_sign_key, key_block, 16);


 sec_hash_16(g_licence_key, &key_block[16], client_random, server_random);
}
