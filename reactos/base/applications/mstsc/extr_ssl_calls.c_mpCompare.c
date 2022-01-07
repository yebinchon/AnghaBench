
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DIGIT_T ;



__attribute__((used)) static int
mpCompare(DIGIT_T* a, DIGIT_T* b, unsigned int ndigits)
{

  if (ndigits == 0)
  {
    return 0;
  }
  while (ndigits--)
  {
    if (a[ndigits] > b[ndigits])
    {
      return 1;
    }
    if (a[ndigits] < b[ndigits])
    {
      return -1;
    }
  }
  return 0;
}
