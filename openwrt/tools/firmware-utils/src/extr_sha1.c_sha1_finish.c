
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
typedef int uchar ;
struct TYPE_4__ {int* total; int* state; } ;
typedef TYPE_1__ sha1_context ;


 int PUT_UINT32_BE (int,int *,int) ;
 int * sha1_padding ;
 int sha1_update (TYPE_1__*,int *,int) ;

void sha1_finish( sha1_context *ctx, uchar digest[20] )
{
    ulong last, padn;
    ulong high, low;
    uchar msglen[8];

    high = ( ctx->total[0] >> 29 )
         | ( ctx->total[1] << 3 );
    low = ( ctx->total[0] << 3 );

    PUT_UINT32_BE( high, msglen, 0 );
    PUT_UINT32_BE( low, msglen, 4 );

    last = ctx->total[0] & 0x3F;
    padn = ( last < 56 ) ? ( 56 - last ) : ( 120 - last );

    sha1_update( ctx, sha1_padding, padn );
    sha1_update( ctx, msglen, 8 );

    PUT_UINT32_BE( ctx->state[0], digest, 0 );
    PUT_UINT32_BE( ctx->state[1], digest, 4 );
    PUT_UINT32_BE( ctx->state[2], digest, 8 );
    PUT_UINT32_BE( ctx->state[3], digest, 12 );
    PUT_UINT32_BE( ctx->state[4], digest, 16 );
}
