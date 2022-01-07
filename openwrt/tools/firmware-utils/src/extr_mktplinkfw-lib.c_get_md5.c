
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int MD5_CTX ;


 int MD5_Final (int *,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,char const*,int) ;

void get_md5(const char *data, int size, uint8_t *md5)
{
 MD5_CTX ctx;

 MD5_Init(&ctx);
 MD5_Update(&ctx, data, size);
 MD5_Final(md5, &ctx);
}
