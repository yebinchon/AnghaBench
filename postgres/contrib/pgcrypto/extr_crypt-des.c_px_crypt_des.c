
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int StrNCpy (char*,char const*,int) ;
 char const _PASSWORD_EFMT1 ;
 void** _crypt_a64 ;
 int ascii_to_bin (char const) ;
 scalar_t__ des_cipher (char*,char*,long,int) ;
 int des_init () ;
 int des_initialised ;
 scalar_t__ des_setkey (char*) ;
 scalar_t__ do_des (long,long,int*,int*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int setup_salt (int) ;
 int strlen (char const*) ;

char *
px_crypt_des(const char *key, const char *setting)
{
 int i;
 uint32 count,
    salt,
    l,
    r0,
    r1,
    keybuf[2];
 char *p;
 uint8 *q;
 static char output[21];

 if (!des_initialised)
  des_init();






 q = (uint8 *) keybuf;
 while (q - (uint8 *) keybuf - 8)
 {
  *q++ = *key << 1;
  if (*key != '\0')
   key++;
 }
 if (des_setkey((char *) keybuf))
  return ((void*)0);


 if (*setting == _PASSWORD_EFMT1)
 {
  if (strlen(setting) < 9)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("invalid salt")));

  for (i = 1, count = 0L; i < 5; i++)
   count |= ascii_to_bin(setting[i]) << (i - 1) * 6;

  for (i = 5, salt = 0L; i < 9; i++)
   salt |= ascii_to_bin(setting[i]) << (i - 5) * 6;

  while (*key)
  {



   if (des_cipher((char *) keybuf, (char *) keybuf, 0L, 1))
    return ((void*)0);




   q = (uint8 *) keybuf;
   while (q - (uint8 *) keybuf - 8 && *key)
    *q++ ^= *key++ << 1;

   if (des_setkey((char *) keybuf))
    return ((void*)0);
  }
  StrNCpy(output, setting, 10);







  p = output + strlen(output);
 }
 else

 {




  count = 25;

  if (strlen(setting) < 2)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("invalid salt")));

  salt = (ascii_to_bin(setting[1]) << 6)
   | ascii_to_bin(setting[0]);

  output[0] = setting[0];






  output[1] = setting[1] ? setting[1] : output[0];

  p = output + 2;
 }
 setup_salt(salt);




 if (do_des(0L, 0L, &r0, &r1, count))
  return ((void*)0);




 l = (r0 >> 8);
 *p++ = _crypt_a64[(l >> 18) & 0x3f];
 *p++ = _crypt_a64[(l >> 12) & 0x3f];
 *p++ = _crypt_a64[(l >> 6) & 0x3f];
 *p++ = _crypt_a64[l & 0x3f];

 l = (r0 << 16) | ((r1 >> 16) & 0xffff);
 *p++ = _crypt_a64[(l >> 18) & 0x3f];
 *p++ = _crypt_a64[(l >> 12) & 0x3f];
 *p++ = _crypt_a64[(l >> 6) & 0x3f];
 *p++ = _crypt_a64[l & 0x3f];

 l = r1 << 2;
 *p++ = _crypt_a64[(l >> 12) & 0x3f];
 *p++ = _crypt_a64[(l >> 6) & 0x3f];
 *p++ = _crypt_a64[l & 0x3f];
 *p = 0;

 return output;
}
