
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* ut8 ;
typedef int unichar ;



__attribute__((used)) static ut8 *
encode_utf8(ut8 *buf, size_t len, unichar *ubuf, size_t ulen)
{
 size_t i;
 ut8 *end = buf + len;

 for (i = 0; i < ulen; i++) {
  if (ubuf[i] <= 0x7f) {
   if (end - buf < 1) {
    return ((void*)0);
   }
   *buf++ = (ut8)ubuf[i];
  } else if (ubuf[i] <= 0x7ff) {
   if (end - buf < 2) {
    return ((void*)0);
   }
   *buf++ = (ut8)((ubuf[i] >> 6) + 0xc0);
   *buf++ = (ut8)((ubuf[i] & 0x3f) + 0x80);
  } else if (ubuf[i] <= 0xffff) {
   if (end - buf < 3) {
    return ((void*)0);
   }
   *buf++ = (ut8)((ubuf[i] >> 12) + 0xe0);
   *buf++ = (ut8)(((ubuf[i] >> 6) & 0x3f) + 0x80);
   *buf++ = (ut8)((ubuf[i] & 0x3f) + 0x80);
  } else if (ubuf[i] <= 0x1fffff) {
   if (end - buf < 4) {
    return ((void*)0);
   }
   *buf++ = (ut8)((ubuf[i] >> 18) + 0xf0);
   *buf++ = (ut8)(((ubuf[i] >> 12) & 0x3f) + 0x80);
   *buf++ = (ut8)(((ubuf[i] >> 6) & 0x3f) + 0x80);
   *buf++ = (ut8)((ubuf[i] & 0x3f) + 0x80);
  } else if (ubuf[i] <= 0x3ffffff) {
   if (end - buf < 5) {
    return ((void*)0);
   }
   *buf++ = (ut8)((ubuf[i] >> 24) + 0xf8);
   *buf++ = (ut8)(((ubuf[i] >> 18) & 0x3f) + 0x80);
   *buf++ = (ut8)(((ubuf[i] >> 12) & 0x3f) + 0x80);
   *buf++ = (ut8)(((ubuf[i] >> 6) & 0x3f) + 0x80);
   *buf++ = (ut8)((ubuf[i] & 0x3f) + 0x80);
  } else if (ubuf[i] <= 0x7fffffff) {
   if (end - buf < 6) {
    return ((void*)0);
   }
   *buf++ = (ut8)((ubuf[i] >> 30) + 0xfc);
   *buf++ = (ut8)(((ubuf[i] >> 24) & 0x3f) + 0x80);
   *buf++ = (ut8)(((ubuf[i] >> 18) & 0x3f) + 0x80);
   *buf++ = (ut8)(((ubuf[i] >> 12) & 0x3f) + 0x80);
   *buf++ = (ut8)(((ubuf[i] >> 6) & 0x3f) + 0x80);
   *buf++ = (ut8)((ubuf[i] & 0x3f) + 0x80);
  } else {
   return ((void*)0);
  }
 }

 return buf;
}
