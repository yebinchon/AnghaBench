
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * request; } ;
typedef TYPE_1__ TS_RESP_CTX ;
typedef int TS_REQ ;



TS_REQ *TS_RESP_CTX_get_request(TS_RESP_CTX *ctx)
{
    return ctx->request;
}
