
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (unsigned char const) ;
 int LC_GB2312_80 ;
 int PG_EUC_CN ;
 int report_invalid_encoding (int ,char const*,int) ;

__attribute__((used)) static void
euc_cn2mic(const unsigned char *euc, unsigned char *p, int len)
{
 int c1;

 while (len > 0)
 {
  c1 = *euc;
  if (IS_HIGHBIT_SET(c1))
  {
   if (len < 2 || !IS_HIGHBIT_SET(euc[1]))
    report_invalid_encoding(PG_EUC_CN, (const char *) euc, len);
   *p++ = LC_GB2312_80;
   *p++ = c1;
   *p++ = euc[1];
   euc += 2;
   len -= 2;
  }
  else
  {
   if (c1 == 0)
    report_invalid_encoding(PG_EUC_CN, (const char *) euc, len);
   *p++ = c1;
   euc++;
   len--;
  }
 }
 *p = '\0';
}
