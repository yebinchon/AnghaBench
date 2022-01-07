
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef long code_int ;
struct TYPE_5__ {size_t cur_bits; long cur_accum; scalar_t__ n_bits; scalar_t__ free_ent; scalar_t__ maxcode; scalar_t__ g_init_bits; long EOFCode; scalar_t__ clear_flg; } ;
typedef TYPE_1__ GifCtx ;


 size_t CUR_BITS_FINISHED ;
 void* MAXCODE (scalar_t__) ;
 int char_out (unsigned int,TYPE_1__*) ;
 int flush_char (TYPE_1__*) ;
 long* masks ;
 scalar_t__ maxbits ;
 scalar_t__ maxmaxcode ;

__attribute__((used)) static void
output(code_int code, GifCtx *ctx)
{
 if (ctx->cur_bits == CUR_BITS_FINISHED) {
  return;
 }

    ctx->cur_accum &= masks[ ctx->cur_bits ];

    if( ctx->cur_bits > 0 )
        ctx->cur_accum |= ((long)code << ctx->cur_bits);
    else
        ctx->cur_accum = code;

    ctx->cur_bits += ctx->n_bits;

    while( ctx->cur_bits >= 8 ) {
        char_out( (unsigned int)(ctx->cur_accum & 0xff), ctx );
        ctx->cur_accum >>= 8;
        ctx->cur_bits -= 8;
    }





   if ( ctx->free_ent > ctx->maxcode || ctx->clear_flg ) {

            if( ctx->clear_flg ) {

                ctx->maxcode = MAXCODE (ctx->n_bits = ctx->g_init_bits);
                ctx->clear_flg = 0;

            } else {

                ++(ctx->n_bits);
                if ( ctx->n_bits == maxbits )
                    ctx->maxcode = maxmaxcode;
                else
                    ctx->maxcode = MAXCODE(ctx->n_bits);
            }
        }

    if( code == ctx->EOFCode ) {



        while( ctx->cur_bits > 0 ) {
                char_out( (unsigned int)(ctx->cur_accum & 0xff), ctx);
                ctx->cur_accum >>= 8;
                ctx->cur_bits -= 8;
        }


  ctx->cur_bits = CUR_BITS_FINISHED;

        flush_char(ctx);
    }
}
