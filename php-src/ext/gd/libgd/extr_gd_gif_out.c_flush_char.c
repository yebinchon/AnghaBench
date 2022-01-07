
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ a_count; int g_outfile; int accum; } ;
typedef TYPE_1__ GifCtx ;


 int gdPutBuf (int ,scalar_t__,int ) ;
 int gdPutC (scalar_t__,int ) ;

__attribute__((used)) static void
flush_char(GifCtx *ctx)
{
        if( ctx->a_count > 0 ) {
                gdPutC( ctx->a_count, ctx->g_outfile );
                gdPutBuf( ctx->accum, ctx->a_count, ctx->g_outfile );
                ctx->a_count = 0;
        }
}
