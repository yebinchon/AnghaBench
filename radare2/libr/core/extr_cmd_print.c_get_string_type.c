
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int RRune ;


 int r_utf8_decode (int const*,int,int*) ;

__attribute__((used)) static char get_string_type(const ut8 *buf, ut64 len) {
 ut64 needle = 0;
 int rc, i;
 char str_type = 0;

 if (!buf) {
  return '?';
 }
 while (needle < len) {
  rc = r_utf8_decode (buf + needle, len - needle, ((void*)0));
  if (!rc) {
   needle++;
   continue;
  }
  if (needle + rc + 2 < len &&
  buf[needle + rc + 0] == 0x00 &&
  buf[needle + rc + 1] == 0x00 &&
  buf[needle + rc + 2] == 0x00) {
   str_type = 'w';
  } else {
   str_type = 'a';
  }
  for (rc = i = 0; needle < len; i += rc) {
   RRune r;
   if (str_type == 'w') {
    if (needle + 1 < len) {
     r = buf[needle + 1] << 8 | buf[needle];
     rc = 2;
    } else {
     break;
    }
   } else {
    rc = r_utf8_decode (buf + needle, len - needle, &r);
    if (rc > 1) {
     str_type = 'u';
    }
   }

   if (!rc) {
    needle++;
    break;
   }
   needle += rc;
  }
 }
 return str_type;
}
