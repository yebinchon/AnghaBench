
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_size ;
typedef int mp_int ;


 scalar_t__ CMPZ (int ) ;
 int MP_DIGIT_BIT ;
 scalar_t__ MP_OK ;
 int MP_USED (int ) ;
 int UMUL (int ,int ,int ) ;
 scalar_t__ mp_int_compare (int ,int ) ;
 scalar_t__ mp_int_copy (int ,int ) ;
 int mp_int_sub (int ,int ,int ) ;
 int s_qdiv (int ,int) ;
 int s_qmod (int ,int) ;
 int s_qsub (int ,int) ;

__attribute__((used)) static int
s_reduce(mp_int x, mp_int m, mp_int mu, mp_int q1, mp_int q2)
{
 mp_size um = MP_USED(m),
    umb_p1,
    umb_m1;

 umb_p1 = (um + 1) * MP_DIGIT_BIT;
 umb_m1 = (um - 1) * MP_DIGIT_BIT;

 if (mp_int_copy(x, q1) != MP_OK)
  return 0;


 s_qdiv(q1, umb_m1);
 UMUL(q1, mu, q2);
 s_qdiv(q2, umb_p1);


 s_qmod(x, umb_p1);






 UMUL(q2, m, q1);
 s_qmod(q1, umb_p1);
 (void) mp_int_sub(x, q1, x);





 if ((CMPZ(x) < 0) && !s_qsub(x, umb_p1))
  return 0;





 if (mp_int_compare(x, m) >= 0)
 {
  (void) mp_int_sub(x, m, x);
  if (mp_int_compare(x, m) >= 0)
  {
   (void) mp_int_sub(x, m, x);
  }
 }


 return 1;
}
