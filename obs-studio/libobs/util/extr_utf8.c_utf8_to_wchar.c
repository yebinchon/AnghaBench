
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t wchar_t ;


 int UTF8_IGNORE_ERROR ;
 int UTF8_SKIP_BOM ;
 size_t _BOM ;
 unsigned char _NXT ;
 unsigned char _SEQ2 ;
 unsigned char _SEQ3 ;
 unsigned char _SEQ4 ;
 unsigned char _SEQ5 ;
 unsigned char _SEQ6 ;
 scalar_t__ utf8_forbidden (unsigned char) ;
 scalar_t__ wchar_forbidden (size_t) ;

size_t utf8_to_wchar(const char *in, size_t insize, wchar_t *out,
       size_t outsize, int flags)
{
 unsigned char *p, *lim;
 wchar_t *wlim, high;
 size_t n, total, i, n_bits;

 if (in == ((void*)0) || (outsize == 0 && out != ((void*)0)))
  return 0;

 total = 0;
 p = (unsigned char *)in;
 lim = (insize != 0) ? (p + insize) : (unsigned char *)-1;
 wlim = out + outsize;

 for (; p < lim; p += n) {
  if (!*p)
   break;

  if (utf8_forbidden(*p) != 0 && (flags & UTF8_IGNORE_ERROR) == 0)
   return 0;




  n = 1;
  if ((*p & 0x80) == 0)
   high = (wchar_t)*p;
  else if ((*p & 0xe0) == _SEQ2) {
   n = 2;
   high = (wchar_t)(*p & 0x1f);
  } else if ((*p & 0xf0) == _SEQ3) {
   n = 3;
   high = (wchar_t)(*p & 0x0f);
  } else if ((*p & 0xf8) == _SEQ4) {
   n = 4;
   high = (wchar_t)(*p & 0x07);
  } else if ((*p & 0xfc) == _SEQ5) {
   n = 5;
   high = (wchar_t)(*p & 0x03);
  } else if ((*p & 0xfe) == _SEQ6) {
   n = 6;
   high = (wchar_t)(*p & 0x01);
  } else {
   if ((flags & UTF8_IGNORE_ERROR) == 0)
    return 0;
   continue;
  }


  if ((size_t)(lim - p) <= n - 1) {
   if ((flags & UTF8_IGNORE_ERROR) == 0)
    return 0;
   n = 1;
   continue;
  }





  if (n > 1) {
   for (i = 1; i < n; i++) {
    if ((p[i] & 0xc0) != _NXT)
     break;
   }
   if (i != n) {
    if ((flags & UTF8_IGNORE_ERROR) == 0)
     return 0;
    n = 1;
    continue;
   }
  }

  total++;

  if (out == ((void*)0))
   continue;

  if (out >= wlim)
   return 0;

  *out = 0;
  n_bits = 0;
  for (i = 1; i < n; i++) {
   *out |= (wchar_t)(p[n - i] & 0x3f) << n_bits;
   n_bits += 6;
  }
  *out |= high << n_bits;

  if (wchar_forbidden(*out) != 0) {
   if ((flags & UTF8_IGNORE_ERROR) == 0)
    return 0;
   else {
    total--;
    out--;
   }
  } else if (*out == _BOM && (flags & UTF8_SKIP_BOM) != 0) {
   total--;
   out--;
  }

  out++;
 }

 return total;
}
