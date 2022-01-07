
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD5_CTX ;


 char* MD5End (int *,char*) ;
 int MD5Init (int *) ;
 int MD5Update (int *,unsigned char*,unsigned int) ;

char *MD5Data(const void *data, unsigned int len, char *buf)
{
  MD5_CTX ctx;

  MD5Init(&ctx);
  MD5Update(&ctx, (unsigned char *)data, len);
  return (MD5End(&ctx, buf));
}
