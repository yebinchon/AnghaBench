
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fd_lookup_st {struct fd_lookup_st* next; int fd; scalar_t__ del; scalar_t__ add; } ;
struct TYPE_3__ {size_t numadd; size_t numdel; struct fd_lookup_st* fds; } ;
typedef int OSSL_ASYNC_FD ;
typedef TYPE_1__ ASYNC_WAIT_CTX ;



int ASYNC_WAIT_CTX_get_changed_fds(ASYNC_WAIT_CTX *ctx, OSSL_ASYNC_FD *addfd,
                                   size_t *numaddfds, OSSL_ASYNC_FD *delfd,
                                   size_t *numdelfds)
{
    struct fd_lookup_st *curr;

    *numaddfds = ctx->numadd;
    *numdelfds = ctx->numdel;
    if (addfd == ((void*)0) && delfd == ((void*)0))
        return 1;

    curr = ctx->fds;

    while (curr != ((void*)0)) {

        if (curr->del && !curr->add && (delfd != ((void*)0))) {
            *delfd = curr->fd;
            delfd++;
        }
        if (curr->add && !curr->del && (addfd != ((void*)0))) {
            *addfd = curr->fd;
            addfd++;
        }
        curr = curr->next;
    }

    return 1;
}
