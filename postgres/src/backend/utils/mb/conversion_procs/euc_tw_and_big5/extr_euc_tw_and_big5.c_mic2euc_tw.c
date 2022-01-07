
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_HIGHBIT_SET (int) ;
 int LCPRV2_B ;
 int LC_CNS11643_1 ;
 int LC_CNS11643_2 ;
 unsigned char const LC_CNS11643_3 ;
 unsigned char const LC_CNS11643_7 ;
 int PG_EUC_TW ;
 int PG_MULE_INTERNAL ;
 void* SS2 ;
 int pg_encoding_verifymb (int ,char const*,int) ;
 int report_invalid_encoding (int ,char const*,int) ;
 int report_untranslatable_char (int ,int ,char const*,int) ;

__attribute__((used)) static void
mic2euc_tw(const unsigned char *mic, unsigned char *p, int len)
{
 int c1;
 int l;

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
  if (c1 == LC_CNS11643_1)
  {
   *p++ = mic[1];
   *p++ = mic[2];
  }
  else if (c1 == LC_CNS11643_2)
  {
   *p++ = SS2;
   *p++ = 0xa2;
   *p++ = mic[1];
   *p++ = mic[2];
  }
  else if (c1 == LCPRV2_B &&
     mic[1] >= LC_CNS11643_3 && mic[1] <= LC_CNS11643_7)
  {
   *p++ = SS2;
   *p++ = mic[1] - LC_CNS11643_3 + 0xa3;
   *p++ = mic[2];
   *p++ = mic[3];
  }
  else
   report_untranslatable_char(PG_MULE_INTERNAL, PG_EUC_TW,
            (const char *) mic, len);
  mic += l;
  len -= l;
 }
 *p = '\0';
}
