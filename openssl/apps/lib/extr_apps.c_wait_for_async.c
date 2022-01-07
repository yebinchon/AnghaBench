
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;
typedef int SSL ;
typedef scalar_t__ OSSL_ASYNC_FD ;


 int FD_ZERO (int *) ;
 int OPENSSL_free (scalar_t__*) ;
 int SSL_get_all_async_fds (int *,scalar_t__*,size_t*) ;
 scalar_t__* app_malloc (int,char*) ;
 int openssl_fdset (int,int *) ;
 int select (int,void*,int *,int *,int *) ;

void wait_for_async(SSL *s)
{


    int width = 0;
    fd_set asyncfds;
    OSSL_ASYNC_FD *fds;
    size_t numfds;
    size_t i;

    if (!SSL_get_all_async_fds(s, ((void*)0), &numfds))
        return;
    if (numfds == 0)
        return;
    fds = app_malloc(sizeof(OSSL_ASYNC_FD) * numfds, "allocate async fds");
    if (!SSL_get_all_async_fds(s, fds, &numfds)) {
        OPENSSL_free(fds);
        return;
    }

    FD_ZERO(&asyncfds);
    for (i = 0; i < numfds; i++) {
        if (width <= (int)fds[i])
            width = (int)fds[i] + 1;
        openssl_fdset((int)fds[i], &asyncfds);
    }
    select(width, (void *)&asyncfds, ((void*)0), ((void*)0), ((void*)0));
    OPENSSL_free(fds);

}
