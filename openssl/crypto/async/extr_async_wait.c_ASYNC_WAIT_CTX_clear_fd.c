
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fd_lookup_st {int del; void const* key; int add; struct fd_lookup_st* next; } ;
struct TYPE_3__ {int numdel; int numadd; struct fd_lookup_st* fds; } ;
typedef TYPE_1__ ASYNC_WAIT_CTX ;


 int OPENSSL_free (struct fd_lookup_st*) ;

int ASYNC_WAIT_CTX_clear_fd(ASYNC_WAIT_CTX *ctx, const void *key)
{
    struct fd_lookup_st *curr, *prev;

    curr = ctx->fds;
    prev = ((void*)0);
    while (curr != ((void*)0)) {
        if (curr->del == 1) {

            prev = curr;
            curr = curr->next;
            continue;
        }
        if (curr->key == key) {

            if (curr->add == 1) {
                if (ctx->fds == curr) {
                    ctx->fds = curr->next;
                } else {
                    prev->next = curr->next;
                }




                OPENSSL_free(curr);
                ctx->numadd--;
                return 1;
            }






            curr->del = 1;
            ctx->numdel++;
            return 1;
        }
        prev = curr;
        curr = curr->next;
    }
    return 0;
}
