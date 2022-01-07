
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int* bitSize; int bloomLength; } ;
struct TYPE_5__ {TYPE_1__ opts; int * collations; int * hashFn; } ;
typedef int Datum ;
typedef TYPE_2__ BloomState ;
typedef int BloomSignatureWord ;


 int DatumGetInt32 (int ) ;
 int FunctionCall1Coll (int *,int ,int ) ;
 int SETBIT (int *,int) ;
 int SIGNWORDBITS ;
 int myRand () ;
 int mySrand (int) ;

void
signValue(BloomState *state, BloomSignatureWord *sign, Datum value, int attno)
{
 uint32 hashVal;
 int nBit,
    j;






 mySrand(attno);






 hashVal = DatumGetInt32(FunctionCall1Coll(&state->hashFn[attno], state->collations[attno], value));
 mySrand(hashVal ^ myRand());

 for (j = 0; j < state->opts.bitSize[attno]; j++)
 {

  nBit = myRand() % (state->opts.bloomLength * SIGNWORDBITS);
  SETBIT(sign, nBit);
 }
}
