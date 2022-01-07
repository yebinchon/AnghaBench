
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_HIGHBIT_SET (int) ;
 int PG_SHIFT_JIS_2004 ;
 int SS2 ;
 int SS3 ;
 int get_ten (int,int*) ;
 int pg_encoding_verifymb (int ,char const*,int) ;
 int report_invalid_encoding (int ,char const*,int) ;

__attribute__((used)) static void
shift_jis_20042euc_jis_2004(const unsigned char *sjis, unsigned char *p, int len)
{
 int c1;
 int ku,
    ten,
    kubun;
 int plane;
 int l;

 while (len > 0)
 {
  c1 = *sjis;

  if (!IS_HIGHBIT_SET(c1))
  {

   if (c1 == 0)
    report_invalid_encoding(PG_SHIFT_JIS_2004,
          (const char *) sjis, len);
   *p++ = c1;
   sjis++;
   len--;
   continue;
  }

  l = pg_encoding_verifymb(PG_SHIFT_JIS_2004, (const char *) sjis, len);

  if (l < 0 || l > len)
   report_invalid_encoding(PG_SHIFT_JIS_2004,
         (const char *) sjis, len);

  if (c1 >= 0xa1 && c1 <= 0xdf && l == 1)
  {

   *p++ = SS2;
   *p++ = c1;
  }
  else if (l == 2)
  {
   int c2 = sjis[1];

   plane = 1;
   ku = 1;
   ten = 1;




   if (c1 >= 0x81 && c1 <= 0x9f)
   {
    ku = (c1 << 1) - 0x100;
    ten = get_ten(c2, &kubun);
    if (ten < 0)
     report_invalid_encoding(PG_SHIFT_JIS_2004,
           (const char *) sjis, len);
    ku -= kubun;
   }
   else if (c1 >= 0xe0 && c1 <= 0xef)
   {
    ku = (c1 << 1) - 0x180;
    ten = get_ten(c2, &kubun);
    if (ten < 0)
     report_invalid_encoding(PG_SHIFT_JIS_2004,

           (const char *) sjis, len);
    ku -= kubun;
   }
   else if (c1 >= 0xf0 && c1 <= 0xf3)

   {
    plane = 2;
    ten = get_ten(c2, &kubun);
    if (ten < 0)
     report_invalid_encoding(PG_SHIFT_JIS_2004,
           (const char *) sjis, len);
    switch (c1)
    {
     case 0xf0:
      ku = kubun == 0 ? 8 : 1;
      break;
     case 0xf1:
      ku = kubun == 0 ? 4 : 3;
      break;
     case 0xf2:
      ku = kubun == 0 ? 12 : 5;
      break;
     default:
      ku = kubun == 0 ? 14 : 13;
      break;
    }
   }
   else if (c1 >= 0xf4 && c1 <= 0xfc)
   {
    plane = 2;
    ten = get_ten(c2, &kubun);
    if (ten < 0)
     report_invalid_encoding(PG_SHIFT_JIS_2004,
           (const char *) sjis, len);
    if (c1 == 0xf4 && kubun == 1)
     ku = 15;
    else
     ku = (c1 << 1) - 0x19a - kubun;
   }
   else
    report_invalid_encoding(PG_SHIFT_JIS_2004,
          (const char *) sjis, len);

   if (plane == 2)
    *p++ = SS3;

   *p++ = ku + 0xa0;
   *p++ = ten + 0xa0;
  }
  sjis += l;
  len -= l;
 }
 *p = '\0';
}
