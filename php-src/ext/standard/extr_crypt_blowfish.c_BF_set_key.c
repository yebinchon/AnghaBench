
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* P; } ;
typedef int BF_word_signed ;
typedef int BF_word ;
typedef int* BF_key ;


 int BF_N ;
 TYPE_1__ BF_init_state ;

__attribute__((used)) static void BF_set_key(const char *key, BF_key expanded, BF_key initial,
    unsigned char flags)
{
 const char *ptr = key;
 unsigned int bug, i, j;
 BF_word safety, sign, diff, tmp[2];
 bug = (unsigned int)flags & 1;
 safety = ((BF_word)flags & 2) << 15;

 sign = diff = 0;

 for (i = 0; i < BF_N + 2; i++) {
  tmp[0] = tmp[1] = 0;
  for (j = 0; j < 4; j++) {
   tmp[0] <<= 8;
   tmp[0] |= (unsigned char)*ptr;
   tmp[1] <<= 8;
   tmp[1] |= (BF_word_signed)(signed char)*ptr;






   if (j)
    sign |= tmp[1] & 0x80;
   if (!*ptr)
    ptr = key;
   else
    ptr++;
  }
  diff |= tmp[0] ^ tmp[1];

  expanded[i] = tmp[bug];
  initial[i] = BF_init_state.P[i] ^ tmp[bug];
 }
 diff |= diff >> 16;
 diff &= 0xffff;
 diff += 0xffff;
 sign <<= 9;
 sign &= ~diff & safety;
 initial[0] ^= sign;
}
