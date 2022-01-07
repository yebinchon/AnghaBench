
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_POOL ;
typedef int OPENSSL_CTX ;


 size_t CRNGT_BUFSIZ ;
 int EVP_Digest (unsigned char*,size_t,unsigned char*,unsigned int*,int ,int *) ;
 int EVP_sha256 () ;
 int TEST_int_lt (int ,int ) ;
 size_t crngt_case ;
 int crngt_idx ;
 int crngt_num_cases ;

__attribute__((used)) static int crngt_entropy_cb(OPENSSL_CTX *ctx, RAND_POOL *pool,
                            unsigned char *buf, unsigned char *md,
                            unsigned int *md_size)
{
    size_t i, z;

    if (!TEST_int_lt(crngt_idx, crngt_num_cases))
        return 0;

    z = crngt_idx++;
    if (z > 0 && crngt_case == z)
        z--;
    for (i = 0; i < CRNGT_BUFSIZ; i++)
        buf[i] = (unsigned char)(i + 'A' + z);
    return EVP_Digest(buf, CRNGT_BUFSIZ, md, md_size, EVP_sha256(), ((void*)0));
}
