
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char const* table_sbox ;

__attribute__((used)) static bool aes128_key_test(const unsigned char *buf) {
 return (buf[16] == (buf[0] ^ table_sbox[buf[13]] ^ 1) && buf[17] == (buf[1] ^ table_sbox[buf[14]]) && buf[18] == (buf[2] ^ table_sbox[buf[15]]) && buf[19] == (buf[3] ^ table_sbox[buf[12]]));



}
