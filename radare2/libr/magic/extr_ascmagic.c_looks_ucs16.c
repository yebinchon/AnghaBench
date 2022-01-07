
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int unichar ;


 scalar_t__ T ;
 scalar_t__* text_chars ;

__attribute__((used)) static int looks_ucs16(const ut8 *buf, size_t nbytes, unichar *ubuf, size_t *ulen) {
 int bigend;
 size_t i;

 if (nbytes < 2) {
  return 0;
 }

 if (buf[0] == 0xff && buf[1] == 0xfe) {
  bigend = 0;
 } else if (buf[0] == 0xfe && buf[1] == 0xff) {
  bigend = 1;
 } else {
  return 0;
 }

 *ulen = 0;

 for (i = 2; i + 1 < nbytes; i += 2) {


  if (bigend) {
   ubuf[(*ulen)++] = buf[i + 1] + 256 * buf[i];
  } else {
   ubuf[(*ulen)++] = buf[i] + 256 * buf[i + 1];
  }

  if (ubuf[*ulen - 1] == 0xfffe) {
   return 0;
  }
  if (ubuf[*ulen - 1] < 128 && text_chars[(size_t)ubuf[*ulen - 1]] != T) {
   return 0;
  }
 }
 return 1 + bigend;
}
