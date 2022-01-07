
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int max_early_data; } ;
typedef TYPE_1__ SSL_CTX ;



uint32_t SSL_CTX_get_max_early_data(const SSL_CTX *ctx)
{
    return ctx->max_early_data;
}
