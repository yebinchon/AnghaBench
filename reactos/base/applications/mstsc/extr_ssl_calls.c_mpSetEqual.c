
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIGIT_T ;



__attribute__((used)) static void
mpSetEqual(DIGIT_T* a, DIGIT_T* b, unsigned int ndigits)
{
  unsigned int i;

  for (i = 0; i < ndigits; i++)
  {
    a[i] = b[i];
  }
}
