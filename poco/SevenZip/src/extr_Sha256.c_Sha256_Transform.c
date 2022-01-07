
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UInt32 ;


 int R (unsigned int) ;
 int RX_8 (int) ;

__attribute__((used)) static void Sha256_Transform(UInt32 *state, const UInt32 *data)
{
  UInt32 W[16];
  unsigned j;
  UInt32 T[8];
  for (j = 0; j < 8; j++)
    T[j] = state[j];


  for (j = 0; j < 64; j += 16)
  {



    unsigned i;
    for (i = 0; i < 16; i++) { R(i); }

  }
  for (j = 0; j < 8; j++)
    state[j] += T[j];





}
