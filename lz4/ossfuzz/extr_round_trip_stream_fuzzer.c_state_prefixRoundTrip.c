
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* buf; int pos; int size; } ;
struct TYPE_6__ {scalar_t__ pos; scalar_t__ size; char* buf; } ;
struct TYPE_8__ {TYPE_2__ compressed; TYPE_1__ data; int cstream; int seed; } ;
typedef TYPE_3__ state_t ;


 int FUZZ_ASSERT (int) ;
 int FUZZ_rand32 (int *,int ,int const) ;
 int LZ4_compress_fast_continue (int ,char const*,char*,int const,int const,int ) ;
 int state_decompress (TYPE_3__*,char*,int const) ;

__attribute__((used)) static void state_prefixRoundTrip(state_t* state)
{
    while (state->data.pos != state->data.size) {
        char const* src = state->data.buf + state->data.pos;
        char* dst = state->compressed.buf + state->compressed.pos;
        int const srcRemaining = state->data.size - state->data.pos;
        int const srcSize = FUZZ_rand32(&state->seed, 0, srcRemaining);
        int const dstCapacity = state->compressed.size - state->compressed.pos;
        int const cSize = LZ4_compress_fast_continue(state->cstream, src, dst,
                                                     srcSize, dstCapacity, 0);
        FUZZ_ASSERT(cSize > 0);
        state->data.pos += srcSize;
        state->compressed.pos += cSize;
        state_decompress(state, dst, cSize);
    }
}
