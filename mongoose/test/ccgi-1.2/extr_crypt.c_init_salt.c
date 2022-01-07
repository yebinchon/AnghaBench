
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {int dummy; } ;
typedef struct timeval pid_t ;
typedef int pid ;
typedef int EVP_MD_CTX ;


 int DIGEST_SIZE ;
 int EVP_DigestFinal (int *,unsigned char*,unsigned int*) ;
 int EVP_DigestInit (int *,int ) ;
 int EVP_DigestUpdate (int *,struct timeval*,int) ;
 int EVP_sha1 () ;
 int RAND_bytes (unsigned char*,int ) ;
 int SALT_SIZE ;
 struct timeval getpid () ;
 int gettimeofday (struct timeval*,int ) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;

__attribute__((used)) static void
init_salt(unsigned char *salt) {
    EVP_MD_CTX ctx;
    unsigned char md[DIGEST_SIZE];
    struct timeval tv;
    pid_t pid;
    unsigned int rlen;

    if (RAND_bytes(salt, SALT_SIZE) == 1) {
        return;
    }
    gettimeofday(&tv, 0);
    pid = getpid();
    EVP_DigestInit(&ctx, EVP_sha1());
    EVP_DigestUpdate(&ctx, &tv, sizeof(tv));
    EVP_DigestUpdate(&ctx, &pid, sizeof(pid));
    EVP_DigestFinal(&ctx, md, &rlen);
    memcpy(salt, md, SALT_SIZE);
}
