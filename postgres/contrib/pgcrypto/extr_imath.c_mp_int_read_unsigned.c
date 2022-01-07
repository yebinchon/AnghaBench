
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_size ;
typedef int mp_result ;
typedef int * mp_int ;


 int CHAR_BIT ;
 unsigned char* MP_DIGITS (int *) ;
 int MP_DIGIT_BIT ;
 int MP_MEMORY ;
 int MP_OK ;
 int assert (int) ;
 int mp_int_zero (int *) ;
 int s_pad (int *,int) ;
 int s_qmul (int *,int) ;

mp_result
mp_int_read_unsigned(mp_int z, unsigned char *buf, int len)
{
 assert(z != ((void*)0) && buf != ((void*)0) && len > 0);


 mp_size need = ((len * CHAR_BIT) + (MP_DIGIT_BIT - 1)) / MP_DIGIT_BIT;

 if (!s_pad(z, need))
  return MP_MEMORY;

 mp_int_zero(z);

 unsigned char *tmp = buf;

 for (int i = len; i > 0; --i, ++tmp)
 {
  (void) s_qmul(z, CHAR_BIT);
  *MP_DIGITS(z) |= *tmp;
 }

 return MP_OK;
}
