
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char const* table_sbox ;

__attribute__((used)) static bool aes192_key_test(const unsigned char *buf) {
 return (buf[24] == (buf[0] ^ table_sbox[buf[21]] ^ 1) && buf[25] == (buf[1] ^ table_sbox[buf[22]]) && buf[26] == (buf[2] ^ table_sbox[buf[23]]) && buf[27] == (buf[3] ^ table_sbox[buf[20]]));



}
