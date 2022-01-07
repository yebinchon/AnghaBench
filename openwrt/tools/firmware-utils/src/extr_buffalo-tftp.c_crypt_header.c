
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;



__attribute__((used)) static void crypt_header(unsigned char *buf, ssize_t len,
    const unsigned char *key1, const unsigned char *key2)
{
 ssize_t i;

 for (i = 0; i < len; i++) {
  unsigned int j;

  for (j = 0; key1[j]; j++)
   if (buf[i] == key1[j]) {
    buf[i] = key2[j];
    break;
   }
 }
}
