
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char const* table_sbox ;

__attribute__((used)) static bool aes256_key_test(const unsigned char *buf) {
 return (buf[32] == (buf[0] ^ table_sbox[buf[29]] ^ 1) && buf[33] == (buf[1] ^ table_sbox[buf[30]]) && buf[34] == (buf[2] ^ table_sbox[buf[31]]) && buf[35] == (buf[3] ^ table_sbox[buf[28]]));



}
