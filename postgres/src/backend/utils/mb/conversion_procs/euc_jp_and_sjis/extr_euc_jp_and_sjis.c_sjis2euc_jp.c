
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nec; int sjis; int euc; } ;


 int IS_HIGHBIT_SET (int) ;
 int PGEUCALTCODE ;
 int PG_SJIS ;
 int SS2 ;
 void* SS3 ;
 TYPE_1__* ibmkanji ;
 int pg_encoding_verifymb (int ,char const*,int) ;
 int report_invalid_encoding (int ,char const*,int) ;

__attribute__((used)) static void
sjis2euc_jp(const unsigned char *sjis, unsigned char *p, int len)
{
 int c1,
    c2,
    i,
    k,
    k2;
 int l;

 while (len > 0)
 {
  c1 = *sjis;
  if (!IS_HIGHBIT_SET(c1))
  {

   if (c1 == 0)
    report_invalid_encoding(PG_SJIS,
          (const char *) sjis, len);
   *p++ = c1;
   sjis++;
   len--;
   continue;
  }
  l = pg_encoding_verifymb(PG_SJIS, (const char *) sjis, len);
  if (l < 0)
   report_invalid_encoding(PG_SJIS,
         (const char *) sjis, len);
  if (c1 >= 0xa1 && c1 <= 0xdf)
  {

   *p++ = SS2;
   *p++ = c1;
  }
  else
  {



   c2 = sjis[1];
   k = (c1 << 8) + c2;
   if (k >= 0xed40 && k < 0xf040)
   {

    for (i = 0;; i++)
    {
     k2 = ibmkanji[i].nec;
     if (k2 == 0xffff)
      break;
     if (k2 == k)
     {
      k = ibmkanji[i].sjis;
      c1 = (k >> 8) & 0xff;
      c2 = k & 0xff;
     }
    }
   }

   if (k < 0xeb3f)
   {

    *p++ = ((c1 & 0x3f) << 1) + 0x9f + (c2 > 0x9e);
    *p++ = c2 + ((c2 > 0x9e) ? 2 : 0x60) + (c2 < 0x80);
   }
   else if ((k >= 0xeb40 && k < 0xf040) || (k >= 0xfc4c && k <= 0xfcfc))
   {

    *p++ = PGEUCALTCODE >> 8;
    *p++ = PGEUCALTCODE & 0xff;
   }
   else if (k >= 0xf040 && k < 0xf540)
   {




    c1 -= 0x6f;
    *p++ = ((c1 & 0x3f) << 1) + 0xf3 + (c2 > 0x9e);
    *p++ = c2 + ((c2 > 0x9e) ? 2 : 0x60) + (c2 < 0x80);
   }
   else if (k >= 0xf540 && k < 0xfa40)
   {




    *p++ = SS3;
    c1 -= 0x74;
    *p++ = ((c1 & 0x3f) << 1) + 0xf3 + (c2 > 0x9e);
    *p++ = c2 + ((c2 > 0x9e) ? 2 : 0x60) + (c2 < 0x80);
   }
   else if (k >= 0xfa40)
   {




    for (i = 0;; i++)
    {
     k2 = ibmkanji[i].sjis;
     if (k2 == 0xffff)
      break;
     if (k2 == k)
     {
      k = ibmkanji[i].euc;
      if (k >= 0x8f0000)
      {
       *p++ = SS3;
       *p++ = 0x80 | ((k & 0xff00) >> 8);
       *p++ = 0x80 | (k & 0xff);
      }
      else
      {
       *p++ = 0x80 | (k >> 8);
       *p++ = 0x80 | (k & 0xff);
      }
     }
    }
   }
  }
  sjis += l;
  len -= l;
 }
 *p = '\0';
}
