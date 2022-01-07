
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * micros; int * millis; int * seconds; } ;
typedef TYPE_1__ TS_RESP_CTX ;


 void* ASN1_INTEGER_new () ;
 int ASN1_INTEGER_set (int *,int) ;
 int ERR_R_MALLOC_FAILURE ;
 int TS_F_TS_RESP_CTX_SET_ACCURACY ;
 int TS_RESP_CTX_accuracy_free (TYPE_1__*) ;
 int TSerr (int ,int ) ;

int TS_RESP_CTX_set_accuracy(TS_RESP_CTX *ctx,
                             int secs, int millis, int micros)
{

    TS_RESP_CTX_accuracy_free(ctx);
    if (secs
        && ((ctx->seconds = ASN1_INTEGER_new()) == ((void*)0)
            || !ASN1_INTEGER_set(ctx->seconds, secs)))
        goto err;
    if (millis
        && ((ctx->millis = ASN1_INTEGER_new()) == ((void*)0)
            || !ASN1_INTEGER_set(ctx->millis, millis)))
        goto err;
    if (micros
        && ((ctx->micros = ASN1_INTEGER_new()) == ((void*)0)
            || !ASN1_INTEGER_set(ctx->micros, micros)))
        goto err;

    return 1;
 err:
    TS_RESP_CTX_accuracy_free(ctx);
    TSerr(TS_F_TS_RESP_CTX_SET_ACCURACY, ERR_R_MALLOC_FAILURE);
    return 0;
}
