
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIGIT_T ;


 int B_J ;
 int HIBITMASK ;
 int HIHALF (int) ;
 int LOHALF (int) ;
 int MAX_DIGIT ;
 int TOHIGH (int) ;
 int spMultSub (int*,int,int,int) ;

__attribute__((used)) static DIGIT_T
spDivide(DIGIT_T* q, DIGIT_T* r, DIGIT_T* u, DIGIT_T v)
{
  DIGIT_T qhat;
  DIGIT_T rhat;
  DIGIT_T t;
  DIGIT_T v0;
  DIGIT_T v1;
  DIGIT_T u0;
  DIGIT_T u1;
  DIGIT_T u2;
  DIGIT_T u3;
  DIGIT_T uu[2];
  DIGIT_T q2;


  if (!(v & HIBITMASK))
  {
    *q = *r = 0;
    return MAX_DIGIT;
  }


  v0 = LOHALF(v);
  v1 = HIHALF(v);
  u0 = LOHALF(u[0]);
  u1 = HIHALF(u[0]);
  u2 = LOHALF(u[1]);
  u3 = HIHALF(u[1]);







  qhat = u3 / v1;
  if (qhat > 0)
  {
    rhat = u3 - qhat * v1;
    t = TOHIGH(rhat) | u2;
    if (qhat * v0 > t)
    {
      qhat--;
    }
  }
  uu[1] = 0;
  uu[0] = u[1];
  if (qhat > 0)
  {

    spMultSub(uu, qhat, v1, v0);
    if (HIHALF(uu[1]) != 0)
    {
      qhat--;
      uu[0] += v;
      uu[1] = 0;
    }
  }
  q2 = qhat;



  t = uu[0];
  qhat = t / v1;
  rhat = t - qhat * v1;

  t = TOHIGH(rhat) | u1;
  if ((qhat == B_J) || (qhat * v0 > t))
  {
    qhat--;
    rhat += v1;
    t = TOHIGH(rhat) | u1;
    if ((rhat < B_J) && (qhat * v0 > t))
    {
      qhat--;
    }
  }


  uu[1] = HIHALF(uu[0]);
  uu[0] = TOHIGH(LOHALF(uu[0])) | u1;
  spMultSub(uu, qhat, v1, v0);
  if (HIHALF(uu[1]) != 0)
  {
    qhat--;
    uu[0] += v;
    uu[1] = 0;
  }

  *q = TOHIGH(qhat);



  t = uu[0];
  qhat = t / v1;
  rhat = t - qhat * v1;

  t = TOHIGH(rhat) | u0;
  if ((qhat == B_J) || (qhat * v0 > t))
  {
    qhat--;
    rhat += v1;
    t = TOHIGH(rhat) | u0;
    if ((rhat < B_J) && (qhat * v0 > t))
    {
      qhat--;
    }
  }


  uu[1] = HIHALF(uu[0]);
  uu[0] = TOHIGH(LOHALF(uu[0])) | u0;
  spMultSub(uu, qhat, v1, v0);
  if (HIHALF(uu[1]) != 0)
  {
    qhat--;
    uu[0] += v;
    uu[1] = 0;
  }

  *q |= LOHALF(qhat);

  *r = uu[0];
  return q2;
}
