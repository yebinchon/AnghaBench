
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

__attribute__((used)) static void
BF_set_key(const char *key, BF_key expanded, BF_key initial,
     int sign_extension_bug)
{
 const char *ptr = key;
 int i,
    j;
 BF_word tmp;

 for (i = 0; i < BF_N + 2; i++)
 {
  tmp = 0;
  for (j = 0; j < 4; j++)
  {
   tmp <<= 8;
   if (sign_extension_bug)
    tmp |= (BF_word_signed) (signed char) *ptr;
   else
    tmp |= (unsigned char) *ptr;

   if (!*ptr)
    ptr = key;
   else
    ptr++;
  }

  expanded[i] = tmp;
  initial[i] = BF_init_state.P[i] ^ tmp;
 }
}
