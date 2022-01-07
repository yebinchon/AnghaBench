
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_ASYNC_FD ;
typedef int ASYNC_WAIT_CTX ;


 int CloseHandle (int ) ;
 int OPENSSL_free (int *) ;
 int close (int ) ;

__attribute__((used)) static void wait_cleanup(ASYNC_WAIT_CTX *ctx, const void *key,
                         OSSL_ASYNC_FD readfd, void *pvwritefd)
{
    OSSL_ASYNC_FD *pwritefd = (OSSL_ASYNC_FD *)pvwritefd;







    OPENSSL_free(pwritefd);
}
