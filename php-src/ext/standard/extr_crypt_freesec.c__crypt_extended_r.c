
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_char ;
struct php_crypt_extended_data {char* output; int initialized; } ;
typedef int keybuf ;


 char const _PASSWORD_EFMT1 ;
 char const* ascii64 ;
 scalar_t__ ascii_is_unsafe (char const) ;
 int ascii_to_bin (char const) ;
 scalar_t__ des_cipher (char*,char*,int ,int,struct php_crypt_extended_data*) ;
 int des_init_local (struct php_crypt_extended_data*) ;
 scalar_t__ des_setkey (char*,struct php_crypt_extended_data*) ;
 scalar_t__ do_des (int ,int ,int*,int*,int,struct php_crypt_extended_data*) ;
 int memcpy (char*,char const*,int) ;
 int setup_salt (int,struct php_crypt_extended_data*) ;

char *
_crypt_extended_r(const unsigned char *key, const char *setting,
 struct php_crypt_extended_data *data)
{
 int i;
 uint32_t count, salt, l, r0, r1, keybuf[2];
 u_char *p, *q;

 if (!data->initialized)
  des_init_local(data);





 q = (u_char *) keybuf;
 while ((size_t)(q - (u_char *) keybuf) < sizeof(keybuf)) {
  *q++ = *key << 1;
  if (*key)
   key++;
 }
 if (des_setkey((char *) keybuf, data))
  return(((void*)0));

 if (*setting == _PASSWORD_EFMT1) {





  for (i = 1, count = 0; i < 5; i++) {
   int value = ascii_to_bin(setting[i]);
   if (ascii64[value] != setting[i])
    return(((void*)0));
   count |= value << (i - 1) * 6;
  }
  if (!count)
   return(((void*)0));

  for (i = 5, salt = 0; i < 9; i++) {
   int value = ascii_to_bin(setting[i]);
   if (ascii64[value] != setting[i])
    return(((void*)0));
   salt |= value << (i - 5) * 6;
  }

  while (*key) {



   if (des_cipher((char *) keybuf, (char *) keybuf,
       0, 1, data))
    return(((void*)0));



   q = (u_char *) keybuf;
   while ((size_t)(q - (u_char *) keybuf) < sizeof(keybuf) && *key)
    *q++ ^= *key++ << 1;

   if (des_setkey((char *) keybuf, data))
    return(((void*)0));
  }
  memcpy(data->output, setting, 9);
  data->output[9] = '\0';
  p = (u_char *) data->output + 9;
 } else {





  count = 25;

  if (ascii_is_unsafe(setting[0]) || ascii_is_unsafe(setting[1]))
   return(((void*)0));

  salt = (ascii_to_bin(setting[1]) << 6)
       | ascii_to_bin(setting[0]);

  data->output[0] = setting[0];
  data->output[1] = setting[1];
  p = (u_char *) data->output + 2;
 }
 setup_salt(salt, data);



 if (do_des(0, 0, &r0, &r1, count, data))
  return(((void*)0));



 l = (r0 >> 8);
 *p++ = ascii64[(l >> 18) & 0x3f];
 *p++ = ascii64[(l >> 12) & 0x3f];
 *p++ = ascii64[(l >> 6) & 0x3f];
 *p++ = ascii64[l & 0x3f];

 l = (r0 << 16) | ((r1 >> 16) & 0xffff);
 *p++ = ascii64[(l >> 18) & 0x3f];
 *p++ = ascii64[(l >> 12) & 0x3f];
 *p++ = ascii64[(l >> 6) & 0x3f];
 *p++ = ascii64[l & 0x3f];

 l = r1 << 2;
 *p++ = ascii64[(l >> 12) & 0x3f];
 *p++ = ascii64[(l >> 6) & 0x3f];
 *p++ = ascii64[l & 0x3f];
 *p = 0;

 return(data->output);
}
