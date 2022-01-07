
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_size ;
typedef int mp_result ;
typedef int mp_int ;
typedef int mp_digit ;


 int CHAR_BIT ;
 int* MP_DIGITS (int ) ;
 int MP_OK ;
 int MP_TRUNC ;
 int MP_USED (int ) ;
 int REV (unsigned char*,int) ;

__attribute__((used)) static mp_result
s_tobin(mp_int z, unsigned char *buf, int *limpos, int pad)
{
 int pos = 0,
    limit = *limpos;
 mp_size uz = MP_USED(z);
 mp_digit *dz = MP_DIGITS(z);

 while (uz > 0 && pos < limit)
 {
  mp_digit d = *dz++;
  int i;

  for (i = sizeof(mp_digit); i > 0 && pos < limit; --i)
  {
   buf[pos++] = (unsigned char) d;
   d >>= CHAR_BIT;


   if (d == 0 && uz == 1)
    i = 0;
  }


  if (i > 0)
   break;

  --uz;
 }

 if (pad != 0 && (buf[pos - 1] >> (CHAR_BIT - 1)))
 {
  if (pos < limit)
  {
   buf[pos++] = 0;
  }
  else
  {
   uz = 1;
  }
 }


 REV(buf, pos);


 *limpos = pos;

 return (uz == 0) ? MP_OK : MP_TRUNC;
}
