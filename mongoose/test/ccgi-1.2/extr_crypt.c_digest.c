
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int EVP_DigestFinal (int *,unsigned char*,unsigned int*) ;
 int EVP_DigestInit (int *,int ) ;
 int EVP_DigestUpdate (int *,void const*,int) ;
 int EVP_sha1 () ;
 int SALT_SIZE ;
 int strlen (char const*) ;

__attribute__((used)) static void
digest(const void *p, int len, const char *password,
    const unsigned char *salt, unsigned char *md)
{
    EVP_MD_CTX ctx;
    unsigned int rlen;

    EVP_DigestInit(&ctx, EVP_sha1());
    EVP_DigestUpdate(&ctx, salt, SALT_SIZE);
    EVP_DigestUpdate(&ctx, password, strlen(password));
    EVP_DigestUpdate(&ctx, p, len);
    EVP_DigestFinal(&ctx, md, &rlen);
}
