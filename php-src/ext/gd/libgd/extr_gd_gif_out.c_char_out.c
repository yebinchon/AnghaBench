
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* accum; int a_count; } ;
typedef TYPE_1__ GifCtx ;


 int flush_char (TYPE_1__*) ;

__attribute__((used)) static void
char_out(int c, GifCtx *ctx)
{
        ctx->accum[ ctx->a_count++ ] = c;
        if( ctx->a_count >= 254 )
                flush_char(ctx);
}
