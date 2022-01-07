
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_mon; int tm_year; } ;
typedef int fsec_t ;



 int BC ;
 int DOY ;
 int DTK_DATE_M ;
 int DTK_M (int) ;
 scalar_t__ DecodeNumber (int,char*,int,int*,struct tm*,int *,int*,int) ;
 int DecodeSpecial (int,char*,int*) ;
 int IGNORE_DTF ;
 int MAXDATEFIELDS ;

 int TZ ;
 int isalnum (unsigned char) ;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 int strlen (char*) ;

__attribute__((used)) static int
DecodeDate(char *str, int fmask, int *tmask, struct tm *tm, bool EuroDates)
{
 fsec_t fsec;

 int nf = 0;
 int i,
    len;
 bool bc = 0;
 bool is2digits = 0;
 int type,
    val,
    dmask = 0;
 char *field[MAXDATEFIELDS];


 while (*str != '\0' && nf < MAXDATEFIELDS)
 {

  while (!isalnum((unsigned char) *str))
   str++;

  field[nf] = str;
  if (isdigit((unsigned char) *str))
  {
   while (isdigit((unsigned char) *str))
    str++;
  }
  else if (isalpha((unsigned char) *str))
  {
   while (isalpha((unsigned char) *str))
    str++;
  }


  if (*str != '\0')
   *str++ = '\0';
  nf++;
 }







 *tmask = 0;


 for (i = 0; i < nf; i++)
 {
  if (isalpha((unsigned char) *field[i]))
  {
   type = DecodeSpecial(i, field[i], &val);
   if (type == IGNORE_DTF)
    continue;

   dmask = DTK_M(type);
   switch (type)
   {
    case 128:
     tm->tm_mon = val;
     break;

    case 129:
     bc = (val == BC);
     break;

    default:
     return -1;
   }
   if (fmask & dmask)
    return -1;

   fmask |= dmask;
   *tmask |= dmask;


   field[i] = ((void*)0);
  }
 }


 for (i = 0; i < nf; i++)
 {
  if (field[i] == ((void*)0))
   continue;

  if ((len = strlen(field[i])) <= 0)
   return -1;

  if (DecodeNumber(len, field[i], fmask, &dmask, tm, &fsec, &is2digits, EuroDates) != 0)
   return -1;

  if (fmask & dmask)
   return -1;

  fmask |= dmask;
  *tmask |= dmask;
 }

 if ((fmask & ~(DTK_M(DOY) | DTK_M(TZ))) != DTK_DATE_M)
  return -1;


 if (bc)
 {
  if (tm->tm_year > 0)
   tm->tm_year = -(tm->tm_year - 1);
  else
   return -1;
 }
 else if (is2digits)
 {
  if (tm->tm_year < 70)
   tm->tm_year += 2000;
  else if (tm->tm_year < 100)
   tm->tm_year += 1900;
 }

 return 0;
}
