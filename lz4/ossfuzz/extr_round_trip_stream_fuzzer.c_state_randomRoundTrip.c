
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int seed; } ;
typedef TYPE_1__ state_t ;
typedef int (* round_trip_t ) (TYPE_1__*) ;


 scalar_t__ FUZZ_rand32 (int *,int ,int) ;

__attribute__((used)) static void state_randomRoundTrip(state_t* state, round_trip_t rt0,
                                  round_trip_t rt1)
{
    if (FUZZ_rand32(&state->seed, 0, 1)) {
      rt0(state);
    } else {
      rt1(state);
    }
}
