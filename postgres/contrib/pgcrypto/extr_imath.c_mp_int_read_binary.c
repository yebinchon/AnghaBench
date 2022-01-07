
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int mp_size ;
typedef int mp_result ;
typedef TYPE_1__* mp_int ;
typedef unsigned char mp_digit ;
struct TYPE_8__ {scalar_t__ sign; } ;


 int CHAR_BIT ;
 unsigned char* MP_DIGITS (TYPE_1__*) ;
 int MP_DIGIT_BIT ;
 int MP_MEMORY ;
 scalar_t__ MP_NEG ;
 int MP_OK ;
 scalar_t__ MP_SIGN (TYPE_1__*) ;
 int assert (int) ;
 int mp_int_zero (TYPE_1__*) ;
 int s_2comp (unsigned char*,int) ;
 int s_pad (TYPE_1__*,int) ;
 int s_qmul (TYPE_1__*,int) ;

mp_result
mp_int_read_binary(mp_int z, unsigned char *buf, int len)
{
 assert(z != ((void*)0) && buf != ((void*)0) && len > 0);


 mp_size need = ((len * CHAR_BIT) + (MP_DIGIT_BIT - 1)) / MP_DIGIT_BIT;

 if (!s_pad(z, need))
  return MP_MEMORY;

 mp_int_zero(z);





 if (buf[0] >> (CHAR_BIT - 1))
 {
  z->sign = MP_NEG;
  s_2comp(buf, len);
 }

 mp_digit *dz = MP_DIGITS(z);
 unsigned char *tmp = buf;

 for (int i = len; i > 0; --i, ++tmp)
 {
  s_qmul(z, (mp_size) CHAR_BIT);
  *dz |= *tmp;
 }


 if (MP_SIGN(z) == MP_NEG)
  s_2comp(buf, len);

 return MP_OK;
}
