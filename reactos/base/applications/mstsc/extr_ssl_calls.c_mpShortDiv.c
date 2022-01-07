
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIGIT_T ;


 unsigned int BITS_PER_DIGIT ;
 int HIBITMASK ;
 int mpShiftLeft (int*,int*,unsigned int,unsigned int) ;
 int spDivide (int*,int*,int*,int) ;

__attribute__((used)) static DIGIT_T
mpShortDiv(DIGIT_T* q, DIGIT_T* u, DIGIT_T v, unsigned int ndigits)
{
  unsigned int j;
  unsigned int shift;
  DIGIT_T t[2];
  DIGIT_T r;
  DIGIT_T bitmask;
  DIGIT_T overflow;
  DIGIT_T* uu;

  if (ndigits == 0)
  {
    return 0;
  }
  if (v == 0)
  {
    return 0;
  }




  bitmask = HIBITMASK;
  for (shift = 0; shift < BITS_PER_DIGIT; shift++)
  {
    if (v & bitmask)
    {
      break;
    }
    bitmask >>= 1;
  }
  v <<= shift;
  overflow = mpShiftLeft(q, u, shift, ndigits);
  uu = q;

  r = overflow;
  j = ndigits;
  while (j--)
  {

    t[1] = r;
    t[0] = uu[j];
    overflow = spDivide(&q[j], &r, t, v);
  }

  r >>= shift;
  return r;
}
