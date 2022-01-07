
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int N; int r; int p; int maxmem_bytes; } ;
typedef TYPE_1__ KDF_SCRYPT ;



__attribute__((used)) static void kdf_scrypt_init(KDF_SCRYPT *ctx)
{




    ctx->N = 1 << 20;
    ctx->r = 8;
    ctx->p = 1;
    ctx->maxmem_bytes = 1025 * 1024 * 1024;
}
