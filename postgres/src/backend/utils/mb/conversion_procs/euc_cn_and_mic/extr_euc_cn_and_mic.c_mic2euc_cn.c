
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (unsigned char const) ;
 int LC_GB2312_80 ;
 int PG_EUC_CN ;
 int PG_MULE_INTERNAL ;
 int report_invalid_encoding (int ,char const*,int) ;
 int report_untranslatable_char (int ,int ,char const*,int) ;

__attribute__((used)) static void
mic2euc_cn(const unsigned char *mic, unsigned char *p, int len)
{
 int c1;

 while (len > 0)
 {
  c1 = *mic;
  if (IS_HIGHBIT_SET(c1))
  {
   if (c1 != LC_GB2312_80)
    report_untranslatable_char(PG_MULE_INTERNAL, PG_EUC_CN,
             (const char *) mic, len);
   if (len < 3 || !IS_HIGHBIT_SET(mic[1]) || !IS_HIGHBIT_SET(mic[2]))
    report_invalid_encoding(PG_MULE_INTERNAL,
          (const char *) mic, len);
   mic++;
   *p++ = *mic++;
   *p++ = *mic++;
   len -= 3;
  }
  else
  {
   if (c1 == 0)
    report_invalid_encoding(PG_MULE_INTERNAL,
          (const char *) mic, len);
   *p++ = c1;
   mic++;
   len--;
  }
 }
 *p = '\0';
}
