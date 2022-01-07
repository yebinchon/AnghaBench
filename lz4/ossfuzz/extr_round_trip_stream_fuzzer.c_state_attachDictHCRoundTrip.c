
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* buf; } ;
struct TYPE_7__ {int dstream; int cstreamHC; int level; TYPE_1__ data; } ;
typedef TYPE_2__ state_t ;
typedef int LZ4_streamHC_t ;


 int LZ4_attach_HC_dictionary (int ,int *) ;
 int * LZ4_createStreamHC () ;
 int LZ4_freeStreamHC (int *) ;
 int LZ4_loadDictHC (int *,char const*,size_t const) ;
 int LZ4_setCompressionLevel (int *,int ) ;
 int LZ4_setStreamDecode (int ,char const*,size_t const) ;
 int state_extDictHCRoundTrip ;
 int state_prefixHCRoundTrip ;
 int state_randomRoundTrip (TYPE_2__*,int ,int ) ;
 size_t state_trimDict (TYPE_2__*) ;

__attribute__((used)) static void state_attachDictHCRoundTrip(state_t* state)
{
    char const* dict = state->data.buf;
    size_t const dictSize = state_trimDict(state);
    LZ4_streamHC_t* dictStream = LZ4_createStreamHC();
    LZ4_setCompressionLevel(dictStream, state->level);
    LZ4_loadDictHC(dictStream, dict, dictSize);
    LZ4_attach_HC_dictionary(state->cstreamHC, dictStream);
    LZ4_setStreamDecode(state->dstream, dict, dictSize);
    state_randomRoundTrip(state, state_prefixHCRoundTrip,
                          state_extDictHCRoundTrip);
    LZ4_freeStreamHC(dictStream);
}
