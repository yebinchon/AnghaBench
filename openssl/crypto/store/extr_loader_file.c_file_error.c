
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ errcnt; } ;
typedef TYPE_1__ OSSL_STORE_LOADER_CTX ;



__attribute__((used)) static int file_error(OSSL_STORE_LOADER_CTX *ctx)
{
    return ctx->errcnt > 0;
}
