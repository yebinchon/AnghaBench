
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_POOL ;
typedef int OPENSSL_CTX ;
typedef int EVP_MD ;


 size_t CRNGT_BUFSIZ ;
 int EVP_Digest (unsigned char*,size_t,unsigned char*,unsigned int*,int *,int *) ;
 int * EVP_MD_fetch (int *,char*,char*) ;
 int EVP_MD_free (int *) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 size_t rand_pool_acquire_entropy (int *) ;
 unsigned char* rand_pool_detach (int *) ;
 int rand_pool_reattach (int *,unsigned char*) ;

int rand_crngt_get_entropy_cb(OPENSSL_CTX *ctx,
                              RAND_POOL *pool,
                              unsigned char *buf,
                              unsigned char *md,
                              unsigned int *md_size)
{
    int r;
    size_t n;
    unsigned char *p;

    if (pool == ((void*)0))
        return 0;

    n = rand_pool_acquire_entropy(pool);
    if (n >= CRNGT_BUFSIZ) {
        EVP_MD *fmd = EVP_MD_fetch(ctx, "SHA256", "");
        if (fmd == ((void*)0))
            return 0;
        p = rand_pool_detach(pool);
        r = EVP_Digest(p, CRNGT_BUFSIZ, md, md_size, fmd, ((void*)0));
        if (r != 0)
            memcpy(buf, p, CRNGT_BUFSIZ);
        rand_pool_reattach(pool, p);
        EVP_MD_free(fmd);
        return r;
    }
    return 0;
}
