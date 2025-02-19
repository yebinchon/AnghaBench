
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_HIGHBIT_SET (int) ;
 int PG_EUC_JIS_2004 ;
 int SS2 ;
 int SS3 ;
 int pg_encoding_verifymb (int ,char const*,int) ;
 int report_invalid_encoding (int ,char const*,int) ;

__attribute__((used)) static void
euc_jis_20042shift_jis_2004(const unsigned char *euc, unsigned char *p, int len)
{
 int c1,
    ku,
    ten;
 int l;

 while (len > 0)
 {
  c1 = *euc;
  if (!IS_HIGHBIT_SET(c1))
  {

   if (c1 == 0)
    report_invalid_encoding(PG_EUC_JIS_2004,
          (const char *) euc, len);
   *p++ = c1;
   euc++;
   len--;
   continue;
  }

  l = pg_encoding_verifymb(PG_EUC_JIS_2004, (const char *) euc, len);

  if (l < 0)
   report_invalid_encoding(PG_EUC_JIS_2004,
         (const char *) euc, len);

  if (c1 == SS2 && l == 2)
  {
   *p++ = euc[1];
  }
  else if (c1 == SS3 && l == 3)
  {
   ku = euc[1] - 0xa0;
   ten = euc[2] - 0xa0;

   switch (ku)
   {
    case 1:
    case 3:
    case 4:
    case 5:
    case 8:
    case 12:
    case 13:
    case 14:
    case 15:
     *p++ = ((ku + 0x1df) >> 1) - (ku >> 3) * 3;
     break;
    default:
     if (ku >= 78 && ku <= 94)
     {
      *p++ = (ku + 0x19b) >> 1;
     }
     else
      report_invalid_encoding(PG_EUC_JIS_2004,
            (const char *) euc, len);
   }

   if (ku % 2)
   {
    if (ten >= 1 && ten <= 63)
     *p++ = ten + 0x3f;
    else if (ten >= 64 && ten <= 94)
     *p++ = ten + 0x40;
    else
     report_invalid_encoding(PG_EUC_JIS_2004,
           (const char *) euc, len);
   }
   else
    *p++ = ten + 0x9e;
  }

  else if (l == 2)
  {
   ku = c1 - 0xa0;
   ten = euc[1] - 0xa0;

   if (ku >= 1 && ku <= 62)
    *p++ = (ku + 0x101) >> 1;
   else if (ku >= 63 && ku <= 94)
    *p++ = (ku + 0x181) >> 1;
   else
    report_invalid_encoding(PG_EUC_JIS_2004,
          (const char *) euc, len);

   if (ku % 2)
   {
    if (ten >= 1 && ten <= 63)
     *p++ = ten + 0x3f;
    else if (ten >= 64 && ten <= 94)
     *p++ = ten + 0x40;
    else
     report_invalid_encoding(PG_EUC_JIS_2004,
           (const char *) euc, len);
   }
   else
    *p++ = ten + 0x9e;
  }
  else
   report_invalid_encoding(PG_EUC_JIS_2004,
         (const char *) euc, len);

  euc += l;
  len -= l;
 }
 *p = '\0';
}
