
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {char const* buf; size_t size; scalar_t__ pos; } ;
struct TYPE_5__ {int dstream; int cstream; int cstreamHC; void* roundTrip; void* compressed; TYPE_1__ data; int seed; } ;
typedef TYPE_2__ state_t ;


 int FUZZ_ASSERT (int ) ;
 int LZ4_compressBound (size_t) ;
 int LZ4_createStream () ;
 int LZ4_createStreamDecode () ;
 int LZ4_createStreamHC () ;
 void* cursor_create (size_t) ;

state_t state_create(char const* data, size_t size, uint32_t seed)
{
    state_t state;

    state.seed = seed;

    state.data.buf = (char const*)data;
    state.data.size = size;
    state.data.pos = 0;


    state.compressed = cursor_create(1024 + 2 * LZ4_compressBound(size));
    state.roundTrip = cursor_create(size);

    state.cstream = LZ4_createStream();
    FUZZ_ASSERT(state.cstream);
    state.cstreamHC = LZ4_createStreamHC();
    FUZZ_ASSERT(state.cstream);
    state.dstream = LZ4_createStreamDecode();
    FUZZ_ASSERT(state.dstream);

    return state;
}
