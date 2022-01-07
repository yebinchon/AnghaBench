
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_HIGHBIT_SET (int) ;
 int LC_JISX0201K ;
 int LC_JISX0208 ;
 int LC_JISX0212 ;
 int PG_EUC_JP ;
 int SS2 ;
 int SS3 ;
 int pg_encoding_verifymb (int ,char const*,int) ;
 int report_invalid_encoding (int ,char const*,int) ;

__attribute__((used)) static void
euc_jp2mic(const unsigned char *euc, unsigned char *p, int len)
{
 int c1;
 int l;

 while (len > 0)
 {
  c1 = *euc;
  if (!IS_HIGHBIT_SET(c1))
  {

   if (c1 == 0)
    report_invalid_encoding(PG_EUC_JP,
          (const char *) euc, len);
   *p++ = c1;
   euc++;
   len--;
   continue;
  }
  l = pg_encoding_verifymb(PG_EUC_JP, (const char *) euc, len);
  if (l < 0)
   report_invalid_encoding(PG_EUC_JP,
         (const char *) euc, len);
  if (c1 == SS2)
  {
   *p++ = LC_JISX0201K;
   *p++ = euc[1];
  }
  else if (c1 == SS3)
  {
   *p++ = LC_JISX0212;
   *p++ = euc[1];
   *p++ = euc[2];
  }
  else
  {
   *p++ = LC_JISX0208;
   *p++ = c1;
   *p++ = euc[1];
  }
  euc += l;
  len -= l;
 }
 *p = '\0';
}
