
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DIGIT_T ;


 int spMultiply (scalar_t__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
QhatTooBig(DIGIT_T qhat, DIGIT_T rhat, DIGIT_T vn2, DIGIT_T ujn2)
{

  DIGIT_T t[2];

  spMultiply(t, qhat, vn2);
  if (t[1] < rhat)
  {
    return 0;
  }
  else if (t[1] > rhat)
  {
    return 1;
  }
  else if (t[0] > ujn2)
  {
    return 1;
  }
  return 0;
}
