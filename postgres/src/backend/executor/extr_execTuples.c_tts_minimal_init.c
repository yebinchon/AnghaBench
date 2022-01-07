
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_2__ {int minhdr; int * tuple; } ;
typedef TYPE_1__ MinimalTupleTableSlot ;



__attribute__((used)) static void
tts_minimal_init(TupleTableSlot *slot)
{
 MinimalTupleTableSlot *mslot = (MinimalTupleTableSlot *) slot;





 mslot->tuple = &mslot->minhdr;
}
