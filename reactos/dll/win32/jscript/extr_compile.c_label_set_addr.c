
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int code_off; int * labels; } ;
typedef TYPE_1__ compiler_ctx_t ;


 unsigned int LABEL_FLAG ;
 int assert (unsigned int) ;

__attribute__((used)) static void label_set_addr(compiler_ctx_t *ctx, unsigned label)
{
    assert(label & LABEL_FLAG);
    ctx->labels[label & ~LABEL_FLAG] = ctx->code_off;
}
