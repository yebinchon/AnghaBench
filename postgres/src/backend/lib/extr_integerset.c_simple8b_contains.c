
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_2__ {int num_ints; int bits_per_int; } ;


 int EMPTY_CODEWORD ;
 int UINT64CONST (int) ;
 TYPE_1__* simple8b_modes ;

__attribute__((used)) static bool
simple8b_contains(uint64 codeword, uint64 key, uint64 base)
{
 int selector = (codeword >> 60);
 int nints = simple8b_modes[selector].num_ints;
 int bits = simple8b_modes[selector].bits_per_int;

 if (codeword == EMPTY_CODEWORD)
  return 0;

 if (bits == 0)
 {

  return (key - base) <= nints;
 }
 else
 {
  uint64 mask = (UINT64CONST(1) << bits) - 1;
  uint64 curr_value;

  curr_value = base;
  for (int i = 0; i < nints; i++)
  {
   uint64 diff = codeword & mask;

   curr_value += 1 + diff;

   if (curr_value >= key)
   {
    if (curr_value == key)
     return 1;
    else
     return 0;
   }

   codeword >>= bits;
  }
 }
 return 0;
}
