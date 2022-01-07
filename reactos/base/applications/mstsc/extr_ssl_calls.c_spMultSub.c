
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DIGIT_T ;


 scalar_t__ HIHALF (scalar_t__) ;
 int LOHALF (scalar_t__) ;
 scalar_t__ MAX_DIGIT ;
 scalar_t__ TOHIGH (int ) ;

__attribute__((used)) static void
spMultSub(DIGIT_T* uu, DIGIT_T qhat, DIGIT_T v1, DIGIT_T v0)
{




  DIGIT_T p0;
  DIGIT_T p1;
  DIGIT_T t;

  p0 = qhat * v0;
  p1 = qhat * v1;
  t = p0 + TOHIGH(LOHALF(p1));
  uu[0] -= t;
  if (uu[0] > MAX_DIGIT - t)
  {
    uu[1]--;
  }
  uu[1] -= HIHALF(p1);
}
