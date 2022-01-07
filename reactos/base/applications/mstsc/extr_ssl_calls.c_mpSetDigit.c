
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DIGIT_T ;



__attribute__((used)) static void
mpSetDigit(DIGIT_T* a, DIGIT_T d, unsigned int ndigits)
{
  unsigned int i;

  for (i = 1; i < ndigits; i++)
  {
    a[i] = 0;
  }
  a[0] = d;
}
