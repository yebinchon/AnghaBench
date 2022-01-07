
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dstream; int cstreamHC; int cstream; int roundTrip; int compressed; } ;
typedef TYPE_1__ state_t ;


 int LZ4_freeStream (int ) ;
 int LZ4_freeStreamDecode (int ) ;
 int LZ4_freeStreamHC (int ) ;
 int cursor_free (int ) ;

void state_free(state_t state)
{
    cursor_free(state.compressed);
    cursor_free(state.roundTrip);
    LZ4_freeStream(state.cstream);
    LZ4_freeStreamHC(state.cstreamHC);
    LZ4_freeStreamDecode(state.dstream);
}
