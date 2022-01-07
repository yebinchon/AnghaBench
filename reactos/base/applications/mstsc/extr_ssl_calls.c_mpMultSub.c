
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DIGIT_T ;


 scalar_t__ MAX_DIGIT ;
 int spMultiply (scalar_t__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static DIGIT_T
mpMultSub(DIGIT_T wn, DIGIT_T* w, DIGIT_T* v, DIGIT_T q, unsigned int n)
{


  DIGIT_T k;
  DIGIT_T t[2];
  unsigned int i;

  if (q == 0)
  {
    return wn;
  }
  k = 0;
  for (i = 0; i < n; i++)
  {
    spMultiply(t, q, v[i]);
    w[i] -= k;
    if (w[i] > MAX_DIGIT - k)
    {
      k = 1;
    }
    else
    {
      k = 0;
    }
    w[i] -= t[0];
    if (w[i] > MAX_DIGIT - t[0])
    {
      k++;
    }
    k += t[1];
  }

  wn -= k;
  return wn;
}
