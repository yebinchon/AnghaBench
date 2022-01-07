
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void php_hash_bin2hex(char *out, const unsigned char *in, size_t in_len)
{
 static const char hexits[17] = "0123456789abcdef";
 size_t i;

 for(i = 0; i < in_len; i++) {
  out[i * 2] = hexits[in[i] >> 4];
  out[(i * 2) + 1] = hexits[in[i] & 0x0F];
 }
}
