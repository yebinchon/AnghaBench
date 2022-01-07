
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (int) ;
 int LC_KS5601 ;
 int PG_EUC_KR ;
 int pg_encoding_verifymb (int ,char const*,int) ;
 int report_invalid_encoding (int ,char const*,int) ;

__attribute__((used)) static void
euc_kr2mic(const unsigned char *euc, unsigned char *p, int len)
{
 int c1;
 int l;

 while (len > 0)
 {
  c1 = *euc;
  if (IS_HIGHBIT_SET(c1))
  {
   l = pg_encoding_verifymb(PG_EUC_KR, (const char *) euc, len);
   if (l != 2)
    report_invalid_encoding(PG_EUC_KR,
          (const char *) euc, len);
   *p++ = LC_KS5601;
   *p++ = c1;
   *p++ = euc[1];
   euc += 2;
   len -= 2;
  }
  else
  {
   if (c1 == 0)
    report_invalid_encoding(PG_EUC_KR,
          (const char *) euc, len);
   *p++ = c1;
   euc++;
   len--;
  }
 }
 *p = '\0';
}
