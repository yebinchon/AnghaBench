
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIGIT_T ;


 unsigned int BITS_PER_DIGIT ;

__attribute__((used)) static DIGIT_T
mpShiftRight(DIGIT_T* a, DIGIT_T* b, unsigned int x, unsigned int ndigits)
{
  unsigned int i;
  unsigned int y;
  DIGIT_T mask;
  DIGIT_T carry;
  DIGIT_T nextcarry;


  if (x >= BITS_PER_DIGIT)
  {
    return 0;
  }

  mask = 0x1;
  for (i = 1; i < x; i++)
  {
    mask = (mask << 1) | mask;
  }
  if (x == 0)
  {
    mask = 0x0;
  }
  y = BITS_PER_DIGIT - x;
  carry = 0;
  i = ndigits;
  while (i--)
  {
    nextcarry = (b[i] & mask) << y;
    a[i] = b[i] >> x | carry;
    carry = nextcarry;
  }
  return carry;
}
