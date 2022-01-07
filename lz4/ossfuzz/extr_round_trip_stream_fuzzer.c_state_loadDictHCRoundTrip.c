
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* buf; } ;
struct TYPE_7__ {int dstream; int cstreamHC; TYPE_1__ data; } ;
typedef TYPE_2__ state_t ;


 int LZ4_loadDictHC (int ,char const*,size_t const) ;
 int LZ4_setStreamDecode (int ,char const*,size_t const) ;
 int state_extDictHCRoundTrip ;
 int state_prefixHCRoundTrip ;
 int state_randomRoundTrip (TYPE_2__*,int ,int ) ;
 size_t state_trimDict (TYPE_2__*) ;

__attribute__((used)) static void state_loadDictHCRoundTrip(state_t* state)
{
    char const* dict = state->data.buf;
    size_t const dictSize = state_trimDict(state);
    LZ4_loadDictHC(state->cstreamHC, dict, dictSize);
    LZ4_setStreamDecode(state->dstream, dict, dictSize);
    state_randomRoundTrip(state, state_prefixHCRoundTrip,
                          state_extDictHCRoundTrip);
}
