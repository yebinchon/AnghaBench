
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {scalar_t__ pos; } ;
struct TYPE_7__ {scalar_t__ pos; } ;
struct TYPE_6__ {scalar_t__ pos; } ;
struct TYPE_9__ {int seed; TYPE_3__ roundTrip; TYPE_2__ compressed; TYPE_1__ data; int dstream; int level; int cstreamHC; int cstream; } ;
typedef TYPE_4__ state_t ;


 int FUZZ_rand32 (int *,int ,int ) ;
 int LZ4HC_CLEVEL_MAX ;
 int LZ4HC_CLEVEL_MIN ;
 int LZ4_resetStreamHC_fast (int ,int ) ;
 int LZ4_resetStream_fast (int ) ;
 int LZ4_setStreamDecode (int ,int *,int ) ;

__attribute__((used)) static void state_reset(state_t* state, uint32_t seed)
{
    state->level = FUZZ_rand32(&seed, LZ4HC_CLEVEL_MIN, LZ4HC_CLEVEL_MAX);
    LZ4_resetStream_fast(state->cstream);
    LZ4_resetStreamHC_fast(state->cstreamHC, state->level);
    LZ4_setStreamDecode(state->dstream, ((void*)0), 0);
    state->data.pos = 0;
    state->compressed.pos = 0;
    state->roundTrip.pos = 0;
    state->seed = seed;
}
