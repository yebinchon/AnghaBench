
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {int* digits; int used; int alloc; void* sign; } ;
typedef TYPE_1__ mpz_t ;
typedef int mp_word ;
typedef int mp_size ;
typedef int mp_result ;
typedef TYPE_1__* mp_int ;
typedef int mp_digit ;


 int CLAMP (TYPE_1__*) ;
 int CLEANUP_TEMP () ;
 int DECLARE_TEMP (int) ;
 int GROW (TYPE_1__*,int) ;
 int MP_ALLOC (TYPE_1__*) ;
 int* MP_DIGITS (TYPE_1__*) ;
 int MP_DIGIT_BIT ;
 int MP_DIGIT_MAX ;
 int MP_MEMORY ;
 int MP_OK ;
 int MP_USED (TYPE_1__*) ;
 void* MP_ZPOS ;
 int REQUIRE (int ) ;
 TYPE_1__* TEMP (int) ;
 int ZERO (int*,int ) ;
 int assert (int) ;
 int mp_int_copy (TYPE_1__*,TYPE_1__*) ;
 int mp_int_set_value (TYPE_1__*,int) ;
 int s_dbmul (int*,int,int*,int) ;
 int s_ddiv (TYPE_1__*,int) ;
 int s_norm (TYPE_1__*,TYPE_1__*) ;
 int s_pad (TYPE_1__*,int) ;
 int s_qdiv (TYPE_1__*,int) ;
 scalar_t__ s_ucmp (TYPE_1__*,TYPE_1__*) ;
 int s_usub (int*,int*,int*,int,int) ;

__attribute__((used)) static mp_result
s_udiv_knuth(mp_int u, mp_int v)
{

 u->sign = MP_ZPOS;
 v->sign = MP_ZPOS;


 if (MP_USED(v) == 1)
 {
  mp_digit d,
     rem;

  d = v->digits[0];
  rem = s_ddiv(u, d);
  mp_int_set_value(v, rem);
  return MP_OK;
 }
 mp_size n = MP_USED(v);
 mp_size m = MP_USED(u) - n;

 assert(n > 1);
 int k = s_norm(u, v);
 if (k == 0 || MP_USED(u) != m + n + 1)
 {
  if (!s_pad(u, m + n + 1))
   return MP_MEMORY;
  u->digits[m + n] = 0;
  u->used = m + n + 1;
 }
 if (!s_pad(v, n + 1))
  return MP_MEMORY;
 v->digits[n] = 0;






 DECLARE_TEMP(2);
 REQUIRE(GROW(TEMP(0), m + 1));
 REQUIRE(GROW(TEMP(1), n + 1));


 int j = m;
 mpz_t r;

 r.digits = MP_DIGITS(u) + j;
 r.used = n + 1;
 r.sign = MP_ZPOS;
 r.alloc = MP_ALLOC(u);
 ZERO(TEMP(1)->digits, TEMP(1)->alloc);


 for (; j >= 0; j--)
 {


  mp_word pfx,
     qhat;

  pfx = r.digits[n];
  pfx <<= MP_DIGIT_BIT / 2;
  pfx <<= MP_DIGIT_BIT / 2;
  pfx |= r.digits[n - 1];

  qhat = pfx / v->digits[n - 1];







  if (qhat > MP_DIGIT_MAX)
   qhat = MP_DIGIT_MAX;
  s_dbmul(MP_DIGITS(v), (mp_digit) qhat, TEMP(1)->digits, n + 1);
  TEMP(1)->used = n + 1;
  CLAMP(TEMP(1));


  CLAMP(&r);
  if (s_ucmp(TEMP(1), &r) > 0)
  {
   qhat -= 1;
   s_dbmul(MP_DIGITS(v), (mp_digit) qhat, TEMP(1)->digits, n + 1);
   TEMP(1)->used = n + 1;
   CLAMP(TEMP(1));
   if (s_ucmp(TEMP(1), &r) > 0)
   {
    assert(qhat > 0);
    qhat -= 1;
    s_dbmul(MP_DIGITS(v), (mp_digit) qhat, TEMP(1)->digits, n + 1);
    TEMP(1)->used = n + 1;
    CLAMP(TEMP(1));
   }
   assert(s_ucmp(TEMP(1), &r) <= 0 && "The mathematics failed us.");
  }





  r.used = n + 1;







  s_usub(r.digits, TEMP(1)->digits, r.digits, r.used, TEMP(1)->used);
  TEMP(0)->digits[j] = (mp_digit) qhat;







  r.digits--;
  ZERO(TEMP(1)->digits, TEMP(1)->alloc);
 }


 TEMP(0)->used = m + 1;
 CLAMP(TEMP(0));


 CLAMP(u);

 if (k != 0)
  s_qdiv(u, k);

 mp_int_copy(u, v);
 mp_int_copy(TEMP(0), u);

 CLEANUP_TEMP();
 return MP_OK;
}
