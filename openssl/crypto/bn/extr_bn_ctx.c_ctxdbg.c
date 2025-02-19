
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {unsigned int depth; int * indexes; } ;
struct TYPE_7__ {TYPE_4__* head; } ;
struct TYPE_11__ {unsigned int used; TYPE_3__ stack; TYPE_1__ pool; } ;
struct TYPE_10__ {struct TYPE_10__* next; TYPE_2__* vals; } ;
struct TYPE_8__ {int dmax; } ;
typedef TYPE_3__ BN_STACK ;
typedef TYPE_4__ BN_POOL_ITEM ;
typedef TYPE_5__ BN_CTX ;
typedef int BIO ;


 int BIO_printf (int *,char*,...) ;
 size_t BN_CTX_POOL_SIZE ;

__attribute__((used)) static void ctxdbg(BIO *channel, const char *text, BN_CTX *ctx)
{
    unsigned int bnidx = 0, fpidx = 0;
    BN_POOL_ITEM *item = ctx->pool.head;
    BN_STACK *stack = &ctx->stack;

    BIO_printf(channel, "%s\n", text);
    BIO_printf(channel, "  (%16p): ", (void*)ctx);
    while (bnidx < ctx->used) {
        BIO_printf(channel, "%03x ",
                   item->vals[bnidx++ % BN_CTX_POOL_SIZE].dmax);
        if (!(bnidx % BN_CTX_POOL_SIZE))
            item = item->next;
    }
    BIO_printf(channel, "\n");
    bnidx = 0;
    BIO_printf(channel, "   %16s : ", "");
    while (fpidx < stack->depth) {
        while (bnidx++ < stack->indexes[fpidx])
            BIO_printf(channel, "    ");
        BIO_printf(channel, "^^^ ");
        bnidx++;
        fpidx++;
    }
    BIO_printf(channel, "\n");
}
