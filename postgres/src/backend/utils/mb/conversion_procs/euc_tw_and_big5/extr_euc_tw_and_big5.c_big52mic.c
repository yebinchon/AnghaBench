
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short BIG5toCNS (unsigned short,unsigned char*) ;
 int IS_HIGHBIT_SET (unsigned short) ;
 int LCPRV2_B ;
 unsigned char LC_CNS11643_3 ;
 unsigned char LC_CNS11643_4 ;
 int PG_BIG5 ;
 int PG_MULE_INTERNAL ;
 int pg_encoding_verifymb (int ,char const*,int) ;
 int report_invalid_encoding (int ,char const*,int) ;
 int report_untranslatable_char (int ,int ,char const*,int) ;

__attribute__((used)) static void
big52mic(const unsigned char *big5, unsigned char *p, int len)
{
 unsigned short c1;
 unsigned short big5buf,
    cnsBuf;
 unsigned char lc;
 int l;

 while (len > 0)
 {
  c1 = *big5;
  if (!IS_HIGHBIT_SET(c1))
  {

   if (c1 == 0)
    report_invalid_encoding(PG_BIG5,
          (const char *) big5, len);
   *p++ = c1;
   big5++;
   len--;
   continue;
  }
  l = pg_encoding_verifymb(PG_BIG5, (const char *) big5, len);
  if (l < 0)
   report_invalid_encoding(PG_BIG5,
         (const char *) big5, len);
  big5buf = (c1 << 8) | big5[1];
  cnsBuf = BIG5toCNS(big5buf, &lc);
  if (lc != 0)
  {

   if (lc == LC_CNS11643_3 || lc == LC_CNS11643_4)
    *p++ = LCPRV2_B;
   *p++ = lc;
   *p++ = (cnsBuf >> 8) & 0x00ff;
   *p++ = cnsBuf & 0x00ff;
  }
  else
   report_untranslatable_char(PG_BIG5, PG_MULE_INTERNAL,
            (const char *) big5, len);
  big5 += l;
  len -= l;
 }
 *p = '\0';
}
