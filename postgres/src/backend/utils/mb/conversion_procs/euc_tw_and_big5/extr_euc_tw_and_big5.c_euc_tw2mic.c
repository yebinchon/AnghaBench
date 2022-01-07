
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (int) ;
 int LCPRV2_B ;
 void* LC_CNS11643_1 ;
 int LC_CNS11643_2 ;
 int LC_CNS11643_3 ;
 int PG_EUC_TW ;
 int SS2 ;
 int pg_encoding_verifymb (int ,char const*,int) ;
 int report_invalid_encoding (int ,char const*,int) ;

__attribute__((used)) static void
euc_tw2mic(const unsigned char *euc, unsigned char *p, int len)
{
 int c1;
 int l;

 while (len > 0)
 {
  c1 = *euc;
  if (IS_HIGHBIT_SET(c1))
  {
   l = pg_encoding_verifymb(PG_EUC_TW, (const char *) euc, len);
   if (l < 0)
    report_invalid_encoding(PG_EUC_TW,
          (const char *) euc, len);
   if (c1 == SS2)
   {
    c1 = euc[1];
    if (c1 == 0xa1)
     *p++ = LC_CNS11643_1;
    else if (c1 == 0xa2)
     *p++ = LC_CNS11643_2;
    else
    {

     *p++ = LCPRV2_B;
     *p++ = c1 - 0xa3 + LC_CNS11643_3;
    }
    *p++ = euc[2];
    *p++ = euc[3];
   }
   else
   {
    *p++ = LC_CNS11643_1;
    *p++ = c1;
    *p++ = euc[1];
   }
   euc += l;
   len -= l;
  }
  else
  {
   if (c1 == 0)
    report_invalid_encoding(PG_EUC_TW,
          (const char *) euc, len);
   *p++ = c1;
   euc++;
   len--;
  }
 }
 *p = '\0';
}
