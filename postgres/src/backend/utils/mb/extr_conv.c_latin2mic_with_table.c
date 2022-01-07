
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char HIGHBIT ;
 int IS_HIGHBIT_SET (unsigned char) ;
 int PG_MULE_INTERNAL ;
 int report_invalid_encoding (int,char const*,int) ;
 int report_untranslatable_char (int,int ,char const*,int) ;

void
latin2mic_with_table(const unsigned char *l,
      unsigned char *p,
      int len,
      int lc,
      int encoding,
      const unsigned char *tab)
{
 unsigned char c1,
    c2;

 while (len > 0)
 {
  c1 = *l;
  if (c1 == 0)
   report_invalid_encoding(encoding, (const char *) l, len);
  if (!IS_HIGHBIT_SET(c1))
   *p++ = c1;
  else
  {
   c2 = tab[c1 - HIGHBIT];
   if (c2)
   {
    *p++ = lc;
    *p++ = c2;
   }
   else
    report_untranslatable_char(encoding, PG_MULE_INTERNAL,
             (const char *) l, len);
  }
  l++;
  len--;
 }
 *p = '\0';
}
