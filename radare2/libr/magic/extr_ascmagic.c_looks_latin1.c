
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;
typedef size_t unichar ;


 int I ;
 int T ;
 int* text_chars ;

__attribute__((used)) static int looks_latin1(const ut8 *buf, size_t nbytes, unichar *ubuf, size_t *ulen) {
 size_t i;
 *ulen = 0;

 for (i = 0; i < nbytes; i++) {
  int t = text_chars[buf[i]];
  if (t != T && t != I) {
   return 0;
  }
  ubuf[(*ulen)++] = buf[i];
 }
 return 1;
}
