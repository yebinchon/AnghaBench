
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;


 int Min (int,int) ;

int32
pglz_decompress(const char *source, int32 slen, char *dest,
    int32 rawsize, bool check_complete)
{
 const unsigned char *sp;
 const unsigned char *srcend;
 unsigned char *dp;
 unsigned char *destend;

 sp = (const unsigned char *) source;
 srcend = ((const unsigned char *) source) + slen;
 dp = (unsigned char *) dest;
 destend = dp + rawsize;

 while (sp < srcend && dp < destend)
 {




  unsigned char ctrl = *sp++;
  int ctrlc;

  for (ctrlc = 0; ctrlc < 8 && sp < srcend && dp < destend; ctrlc++)
  {

   if (ctrl & 1)
   {







    int32 len;
    int32 off;

    len = (sp[0] & 0x0f) + 3;
    off = ((sp[0] & 0xf0) << 4) | sp[1];
    sp += 2;
    if (len == 18)
     len += *sp++;







    len = Min(len, destend - dp);
    while (len--)
    {
     *dp = dp[-off];
     dp++;
    }
   }
   else
   {




    *dp++ = *sp++;
   }




   ctrl >>= 1;
  }
 }






 if (check_complete && (dp != destend || sp != srcend))
  return -1;




 return (char *) dp - dest;
}
