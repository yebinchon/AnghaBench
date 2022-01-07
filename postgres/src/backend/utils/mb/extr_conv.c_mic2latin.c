
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_HIGHBIT_SET (unsigned char const) ;
 int PG_MULE_INTERNAL ;
 int pg_mic_mblen (unsigned char const*) ;
 int report_invalid_encoding (int ,char const*,int) ;
 int report_untranslatable_char (int ,int,char const*,int) ;

void
mic2latin(const unsigned char *mic, unsigned char *p, int len,
    int lc, int encoding)
{
 int c1;

 while (len > 0)
 {
  c1 = *mic;
  if (c1 == 0)
   report_invalid_encoding(PG_MULE_INTERNAL, (const char *) mic, len);
  if (!IS_HIGHBIT_SET(c1))
  {

   *p++ = c1;
   mic++;
   len--;
  }
  else
  {
   int l = pg_mic_mblen(mic);

   if (len < l)
    report_invalid_encoding(PG_MULE_INTERNAL, (const char *) mic,
          len);
   if (l != 2 || c1 != lc || !IS_HIGHBIT_SET(mic[1]))
    report_untranslatable_char(PG_MULE_INTERNAL, encoding,
             (const char *) mic, len);
   *p++ = mic[1];
   mic += 2;
   len -= 2;
  }
 }
 *p = '\0';
}
