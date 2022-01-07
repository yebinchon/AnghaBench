
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DIGIT_T ;



__attribute__((used)) static unsigned int
mpSizeof(DIGIT_T* a, unsigned int ndigits)
{
  while (ndigits--)
  {
    if (a[ndigits] != 0)
    {
      return (++ndigits);
    }
  }
  return 0;
}
