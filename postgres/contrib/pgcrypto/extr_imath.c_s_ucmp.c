
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_size ;
typedef int mp_int ;


 int MP_DIGITS (int ) ;
 scalar_t__ MP_USED (int ) ;
 int s_cdig (int ,int ,scalar_t__) ;

__attribute__((used)) static int
s_ucmp(mp_int a, mp_int b)
{
 mp_size ua = MP_USED(a),
    ub = MP_USED(b);

 if (ua > ub)
 {
  return 1;
 }
 else if (ub > ua)
 {
  return -1;
 }
 else
 {
  return s_cdig(MP_DIGITS(a), MP_DIGITS(b), ua);
 }
}
