
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DIGIT_T ;


 int spMultiply (scalar_t__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
mpMultiply(DIGIT_T* w, DIGIT_T* u, DIGIT_T* v, unsigned int ndigits)
{




  DIGIT_T k;
  DIGIT_T t[2];
  unsigned int i;
  unsigned int j;
  unsigned int m;
  unsigned int n;

  n = ndigits;
  m = n;

  for (i = 0; i < 2 * m; i++)
  {
    w[i] = 0;
  }
  for (j = 0; j < n; j++)
  {

    if (v[j] == 0)
    {
      w[j + m] = 0;
    }
    else
    {

      k = 0;
      for (i = 0; i < m; i++)
      {


        spMultiply(t, u[i], v[j]);
        t[0] += k;
        if (t[0] < k)
        {
          t[1]++;
        }
        t[0] += w[i + j];
        if (t[0] < w[i+j])
        {
          t[1]++;
        }
        w[i + j] = t[0];
        k = t[1];
      }

      w[j + m] = k;
    }
  }
  return 0;
}
