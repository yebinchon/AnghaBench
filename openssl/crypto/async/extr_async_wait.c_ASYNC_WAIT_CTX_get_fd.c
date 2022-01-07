
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fd_lookup_st {void const* key; struct fd_lookup_st* next; void* custom_data; int fd; scalar_t__ del; } ;
struct TYPE_3__ {struct fd_lookup_st* fds; } ;
typedef int OSSL_ASYNC_FD ;
typedef TYPE_1__ ASYNC_WAIT_CTX ;



int ASYNC_WAIT_CTX_get_fd(ASYNC_WAIT_CTX *ctx, const void *key,
                          OSSL_ASYNC_FD *fd, void **custom_data)
{
    struct fd_lookup_st *curr;

    curr = ctx->fds;
    while (curr != ((void*)0)) {
        if (curr->del) {

            curr = curr->next;
            continue;
        }
        if (curr->key == key) {
            *fd = curr->fd;
            *custom_data = curr->custom_data;
            return 1;
        }
        curr = curr->next;
    }
    return 0;
}
