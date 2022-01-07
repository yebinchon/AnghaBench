
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int mp_size ;
typedef TYPE_1__* mp_int ;
typedef unsigned int mp_digit ;
struct TYPE_6__ {unsigned int* digits; } ;


 int MP_DIGIT_BIT ;
 int MP_USED (TYPE_1__*) ;
 int s_qmul (TYPE_1__*,int ) ;

__attribute__((used)) static int
s_norm(mp_int a, mp_int b)
{
 mp_digit d = b->digits[MP_USED(b) - 1];
 int k = 0;

 while (d < (1u << (mp_digit) (MP_DIGIT_BIT - 1)))
 {
  d <<= 1;
  ++k;
 }


 if (k != 0)
 {
  (void) s_qmul(a, (mp_size) k);
  (void) s_qmul(b, (mp_size) k);
 }

 return k;
}
