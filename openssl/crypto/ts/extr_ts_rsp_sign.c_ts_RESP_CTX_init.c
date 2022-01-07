
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tst_info; int * response; int * request; } ;
typedef TYPE_1__ TS_RESP_CTX ;



__attribute__((used)) static void ts_RESP_CTX_init(TS_RESP_CTX *ctx)
{
    ctx->request = ((void*)0);
    ctx->response = ((void*)0);
    ctx->tst_info = ((void*)0);
}
