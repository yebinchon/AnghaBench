
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_lookup_st {struct fd_lookup_st* next; int custom_data; int fd; int key; int (* cleanup ) (struct fd_lookup_st*,int ,int ,int ) ;int del; struct fd_lookup_st* fds; } ;
typedef struct fd_lookup_st ASYNC_WAIT_CTX ;


 int OPENSSL_free (struct fd_lookup_st*) ;
 int stub1 (struct fd_lookup_st*,int ,int ,int ) ;

void ASYNC_WAIT_CTX_free(ASYNC_WAIT_CTX *ctx)
{
    struct fd_lookup_st *curr;
    struct fd_lookup_st *next;

    if (ctx == ((void*)0))
        return;

    curr = ctx->fds;
    while (curr != ((void*)0)) {
        if (!curr->del) {

            if (curr->cleanup != ((void*)0))
                curr->cleanup(ctx, curr->key, curr->fd, curr->custom_data);
        }

        next = curr->next;
        OPENSSL_free(curr);
        curr = next;
    }

    OPENSSL_free(ctx);
}
