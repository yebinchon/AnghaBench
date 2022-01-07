
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int euc; int sjis; } ;


 int IS_HIGHBIT_SET (int) ;
 int LC_JISX0201K ;
 int LC_JISX0208 ;
 int LC_JISX0212 ;
 int PGSJISALTCODE ;
 int PG_MULE_INTERNAL ;
 int PG_SJIS ;
 TYPE_1__* ibmkanji ;
 int pg_encoding_verifymb (int ,char const*,int) ;
 int report_invalid_encoding (int ,char const*,int) ;
 int report_untranslatable_char (int ,int ,char const*,int) ;

__attribute__((used)) static void
mic2sjis(const unsigned char *mic, unsigned char *p, int len)
{
 int c1,
    c2,
    k,
    l;

 while (len > 0)
 {
  c1 = *mic;
  if (!IS_HIGHBIT_SET(c1))
  {

   if (c1 == 0)
    report_invalid_encoding(PG_MULE_INTERNAL,
          (const char *) mic, len);
   *p++ = c1;
   mic++;
   len--;
   continue;
  }
  l = pg_encoding_verifymb(PG_MULE_INTERNAL, (const char *) mic, len);
  if (l < 0)
   report_invalid_encoding(PG_MULE_INTERNAL,
         (const char *) mic, len);
  if (c1 == LC_JISX0201K)
   *p++ = mic[1];
  else if (c1 == LC_JISX0208)
  {
   c1 = mic[1];
   c2 = mic[2];
   k = (c1 << 8) | (c2 & 0xff);
   if (k >= 0xf5a1)
   {

    c1 -= 0x54;
    *p++ = ((c1 - 0xa1) >> 1) + ((c1 < 0xdf) ? 0x81 : 0xc1) + 0x6f;
   }
   else
    *p++ = ((c1 - 0xa1) >> 1) + ((c1 < 0xdf) ? 0x81 : 0xc1);
   *p++ = c2 - ((c1 & 1) ? ((c2 < 0xe0) ? 0x61 : 0x60) : 2);
  }
  else if (c1 == LC_JISX0212)
  {
   int i,
      k2;

   c1 = mic[1];
   c2 = mic[2];
   k = c1 << 8 | c2;
   if (k >= 0xf5a1)
   {

    c1 -= 0x54;
    *p++ = ((c1 - 0xa1) >> 1) + ((c1 < 0xdf) ? 0x81 : 0xc1) + 0x74;
    *p++ = c2 - ((c1 & 1) ? ((c2 < 0xe0) ? 0x61 : 0x60) : 2);
   }
   else
   {

    for (i = 0;; i++)
    {
     k2 = ibmkanji[i].euc & 0xffff;
     if (k2 == 0xffff)
     {
      *p++ = PGSJISALTCODE >> 8;
      *p++ = PGSJISALTCODE & 0xff;
      break;
     }
     if (k2 == k)
     {
      k = ibmkanji[i].sjis;
      *p++ = k >> 8;
      *p++ = k & 0xff;
      break;
     }
    }
   }
  }
  else
   report_untranslatable_char(PG_MULE_INTERNAL, PG_SJIS,
            (const char *) mic, len);
  mic += l;
  len -= l;
 }
 *p = '\0';
}
