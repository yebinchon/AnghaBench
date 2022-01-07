
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int unichar ;


 scalar_t__ T ;
 scalar_t__* text_chars ;

int file_looks_utf8(const ut8 *buf, size_t nbytes, unichar *ubuf, size_t *ulen) {
 size_t i;
 int n;
 unichar c;
 int gotone = 0, ctrl = 0;

 if (ubuf) {
  *ulen = 0;
 }

 for (i = 0; i < nbytes; i++) {
  if ((buf[i] & 0x80) == 0) {





   if (text_chars[buf[i]] != T) {
    ctrl = 1;
   }

   if (ubuf) {
    ubuf[(*ulen)++] = buf[i];
   }
  } else if ((buf[i] & 0x40) == 0) {
   return -1;
  } else {
   int following;

   if ((buf[i] & 0x20) == 0) {
    c = buf[i] & 0x1f;
    following = 1;
   } else if ((buf[i] & 0x10) == 0) {
    c = buf[i] & 0x0f;
    following = 2;
   } else if ((buf[i] & 0x08) == 0) {
    c = buf[i] & 0x07;
    following = 3;
   } else if ((buf[i] & 0x04) == 0) {
    c = buf[i] & 0x03;
    following = 4;
   } else if ((buf[i] & 0x02) == 0) {
    c = buf[i] & 0x01;
    following = 5;
   } else {
    return -1;
   }

   for (n = 0; n < following; n++) {
    i++;
    if (i >= nbytes) {
     goto done;
    }

    if ((buf[i] & 0x80) == 0 || (buf[i] & 0x40)) {
     return -1;
    }

    c = (c << 6) + (buf[i] & 0x3f);
   }

   if (ubuf) {
    ubuf[(*ulen)++] = c;
   }
   gotone = 1;
  }
 }
done:
 return ctrl ? 0 : (gotone ? 2 : 1);
}
