
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct fd_lookup_st {void (* cleanup ) (TYPE_1__*,void const*,int ,void*) ;int add; struct fd_lookup_st* next; void* custom_data; int fd; void const* key; } ;
struct TYPE_5__ {int numadd; struct fd_lookup_st* fds; } ;
typedef int OSSL_ASYNC_FD ;
typedef TYPE_1__ ASYNC_WAIT_CTX ;


 int ASYNC_F_ASYNC_WAIT_CTX_SET_WAIT_FD ;
 int ASYNCerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 struct fd_lookup_st* OPENSSL_zalloc (int) ;

int ASYNC_WAIT_CTX_set_wait_fd(ASYNC_WAIT_CTX *ctx, const void *key,
                               OSSL_ASYNC_FD fd, void *custom_data,
                               void (*cleanup)(ASYNC_WAIT_CTX *, const void *,
                                               OSSL_ASYNC_FD, void *))
{
    struct fd_lookup_st *fdlookup;

    if ((fdlookup = OPENSSL_zalloc(sizeof(*fdlookup))) == ((void*)0)) {
        ASYNCerr(ASYNC_F_ASYNC_WAIT_CTX_SET_WAIT_FD, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    fdlookup->key = key;
    fdlookup->fd = fd;
    fdlookup->custom_data = custom_data;
    fdlookup->cleanup = cleanup;
    fdlookup->add = 1;
    fdlookup->next = ctx->fds;
    ctx->fds = fdlookup;
    ctx->numadd++;
    return 1;
}
