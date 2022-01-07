
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DIGIT_T ;



__attribute__((used)) static DIGIT_T
mpAdd(DIGIT_T* w, DIGIT_T* u, DIGIT_T* v, unsigned int ndigits)
{





  DIGIT_T k;
  unsigned int j;


  k = 0;
  for (j = 0; j < ndigits; j++)
  {


    w[j] = u[j] + k;
    if (w[j] < k)
    {
      k = 1;
    }
    else
    {
      k = 0;
    }
    w[j] += v[j];
    if (w[j] < v[j])
    {
      k++;
    }
  }
  return k;
}
