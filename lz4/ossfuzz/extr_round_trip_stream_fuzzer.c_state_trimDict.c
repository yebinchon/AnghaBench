
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ pos; int buf; } ;
struct TYPE_6__ {scalar_t__ pos; int buf; int size; } ;
struct TYPE_7__ {TYPE_1__ roundTrip; TYPE_2__ data; int seed; } ;
typedef TYPE_3__ state_t ;


 int DEBUGLOG (int,char*,size_t const) ;
 int FUZZ_ASSERT (int) ;
 size_t FUZZ_rand32 (int *,int ,int ) ;
 int MIN (int,int ) ;
 int memcpy (int ,int ,size_t const) ;

__attribute__((used)) static size_t state_trimDict(state_t* state)
{

    uint32_t maxDictSize = MIN(70 * 1024, state->data.size);
    size_t const dictSize = FUZZ_rand32(&state->seed, 0, maxDictSize);
    DEBUGLOG(2, "dictSize = %zu", dictSize);
    FUZZ_ASSERT(state->data.pos == 0);
    FUZZ_ASSERT(state->roundTrip.pos == 0);
    memcpy(state->roundTrip.buf, state->data.buf, dictSize);
    state->data.pos += dictSize;
    state->roundTrip.pos += dictSize;
    return dictSize;
}
