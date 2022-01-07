
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct openssl_ctx_onfree_list_st {struct openssl_ctx_onfree_list_st* next; int fn; } ;
typedef int openssl_ctx_onfree_fn ;
struct TYPE_3__ {struct openssl_ctx_onfree_list_st* onfreelist; } ;
typedef TYPE_1__ OPENSSL_CTX ;


 struct openssl_ctx_onfree_list_st* OPENSSL_malloc (int) ;

int openssl_ctx_onfree(OPENSSL_CTX *ctx, openssl_ctx_onfree_fn onfreefn)
{
    struct openssl_ctx_onfree_list_st *newonfree
        = OPENSSL_malloc(sizeof(*newonfree));

    if (newonfree == ((void*)0))
        return 0;

    newonfree->fn = onfreefn;
    newonfree->next = ctx->onfreelist;
    ctx->onfreelist = newonfree;

    return 1;
}
