
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int Assert (int) ;
 int* b64lookup ;
 int memset (char*,int ,int) ;

int
pg_b64_decode(const char *src, int len, char *dst, int dstlen)
{
 const char *srcend = src + len,
      *s = src;
 char *p = dst;
 char c;
 int b = 0;
 uint32 buf = 0;
 int pos = 0,
    end = 0;

 while (s < srcend)
 {
  c = *s++;


  if (c == ' ' || c == '\t' || c == '\n' || c == '\r')
   goto error;

  if (c == '=')
  {

   if (!end)
   {
    if (pos == 2)
     end = 1;
    else if (pos == 3)
     end = 2;
    else
    {




     goto error;
    }
   }
   b = 0;
  }
  else
  {
   b = -1;
   if (c > 0 && c < 127)
    b = b64lookup[(unsigned char) c];
   if (b < 0)
   {

    goto error;
   }
  }

  buf = (buf << 6) + b;
  pos++;
  if (pos == 4)
  {




   if ((p - dst + 1) > dstlen)
    goto error;
   *p++ = (buf >> 16) & 255;

   if (end == 0 || end > 1)
   {

    if ((p - dst + 1) > dstlen)
     goto error;
    *p++ = (buf >> 8) & 255;
   }
   if (end == 0 || end > 2)
   {

    if ((p - dst + 1) > dstlen)
     goto error;
    *p++ = buf & 255;
   }
   buf = 0;
   pos = 0;
  }
 }

 if (pos != 0)
 {




  goto error;
 }

 Assert((p - dst) <= dstlen);
 return p - dst;

error:
 memset(dst, 0, dstlen);
 return -1;
}
