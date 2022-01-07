
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_result ;
typedef int mp_int ;


 int CHAR_BIT ;
 int mp_int_count_bits (int ) ;
 int mp_int_unsigned_len (int ) ;

mp_result
mp_int_binary_len(mp_int z)
{
 mp_result res = mp_int_count_bits(z);

 if (res <= 0)
  return res;

 int bytes = mp_int_unsigned_len(z);






 if (bytes * CHAR_BIT == res)
  ++bytes;

 return bytes;
}
