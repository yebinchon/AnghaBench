
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int DWORD ;



__attribute__((used)) static inline DWORD make_grfdex(script_ctx_t *ctx, DWORD flags)
{
    return ((ctx->version & 0xff) << 28) | flags;
}
