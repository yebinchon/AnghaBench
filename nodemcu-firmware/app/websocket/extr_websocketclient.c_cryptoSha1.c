
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int SHA1_CTX ;


 int SHA1Final (int *,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,char*,unsigned int) ;
 scalar_t__ calloc (int,int) ;

__attribute__((used)) static char *cryptoSha1(char *data, unsigned int len) {
  SHA1_CTX ctx;
  SHA1Init(&ctx);
  SHA1Update(&ctx, data, len);

  uint8_t *digest = (uint8_t *) calloc(1,20);
  SHA1Final(digest, &ctx);
  return (char *) digest;
}
