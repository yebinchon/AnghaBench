
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD5_CTX ;


 int LENGTH ;
 int MD5Final (unsigned char*,int *) ;
 char* malloc (int) ;

char *MD5End(MD5_CTX *ctx, char *buf)
{
  int i;
  unsigned char digest[LENGTH];
  static const char hex[] = "0123456789abcdef";

  if (!buf)
    buf = malloc(2 * LENGTH + 1);
  if (!buf)
    return 0;
  MD5Final(digest, ctx);
  for (i = 0; i < LENGTH; i++) {
    buf[i + i] = hex[digest[i] >> 4];
    buf[i + i + 1] = hex[digest[i] & 0x0f];
  }
  buf[i + i] = '\0';
  return buf;
}
