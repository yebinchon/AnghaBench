
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIGIT_T ;


 int HIHALF (int) ;
 int LOHALF (int) ;
 int TOHIGH (int) ;

__attribute__((used)) static int
spMultiply(DIGIT_T* p, DIGIT_T x, DIGIT_T y)
{
  DIGIT_T x0;
  DIGIT_T y0;
  DIGIT_T x1;
  DIGIT_T y1;
  DIGIT_T t;
  DIGIT_T u;
  DIGIT_T carry;
  x0 = LOHALF(x);
  x1 = HIHALF(x);
  y0 = LOHALF(y);
  y1 = HIHALF(y);


  p[0] = x0 * y0;


  t = x0 * y1;
  u = x1 * y0;
  t += u;
  if (t < u)
  {
    carry = 1;
  }
  else
  {
    carry = 0;
  }


  carry = TOHIGH(carry) + HIHALF(t);


  t = TOHIGH(t);
  p[0] += t;
  if (p[0] < t)
  {
    carry++;
  }

  p[1] = x1 * y1;
  p[1] += carry;

  return 0;
}
