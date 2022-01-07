
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint32 ;


 int Assert (int) ;
 char* _base64 ;
 int memset (char*,int ,int) ;

int
pg_b64_encode(const char *src, int len, char *dst, int dstlen)
{
 char *p;
 const char *s,
      *end = src + len;
 int pos = 2;
 uint32 buf = 0;

 s = src;
 p = dst;

 while (s < end)
 {
  buf |= (unsigned char) *s << (pos << 3);
  pos--;
  s++;


  if (pos < 0)
  {




   if ((p - dst + 4) > dstlen)
    goto error;

   *p++ = _base64[(buf >> 18) & 0x3f];
   *p++ = _base64[(buf >> 12) & 0x3f];
   *p++ = _base64[(buf >> 6) & 0x3f];
   *p++ = _base64[buf & 0x3f];

   pos = 2;
   buf = 0;
  }
 }
 if (pos != 2)
 {




  if ((p - dst + 4) > dstlen)
   goto error;

  *p++ = _base64[(buf >> 18) & 0x3f];
  *p++ = _base64[(buf >> 12) & 0x3f];
  *p++ = (pos == 0) ? _base64[(buf >> 6) & 0x3f] : '=';
  *p++ = '=';
 }

 Assert((p - dst) <= dstlen);
 return p - dst;

error:
 memset(dst, 0, dstlen);
 return -1;
}
