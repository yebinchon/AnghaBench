
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_ASYNC_FD ;
typedef int ASYNC_WAIT_CTX ;


 int close (int ) ;

__attribute__((used)) static void afalg_waitfd_cleanup(ASYNC_WAIT_CTX *ctx, const void *key,
                                 OSSL_ASYNC_FD waitfd, void *custom)
{
    close(waitfd);
}
