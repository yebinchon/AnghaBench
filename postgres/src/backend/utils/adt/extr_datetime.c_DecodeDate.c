
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_mon; } ;
typedef int fsec_t ;


 int DOY ;
 int DTERR_BAD_FORMAT ;
 int DTK_DATE_M ;
 int DTK_M (int) ;
 int DecodeNumber (int,char*,int,int,int*,struct pg_tm*,int *,int*) ;
 int DecodeSpecial (int,char*,int*) ;
 int IGNORE_DTF ;
 int MAXDATEFIELDS ;

 int TZ ;
 int isalnum (unsigned char) ;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 int strlen (char*) ;

__attribute__((used)) static int
DecodeDate(char *str, int fmask, int *tmask, bool *is2digits,
     struct pg_tm *tm)
{
 fsec_t fsec;
 int nf = 0;
 int i,
    len;
 int dterr;
 bool haveTextMonth = 0;
 int type,
    val,
    dmask = 0;
 char *field[MAXDATEFIELDS];

 *tmask = 0;


 while (*str != '\0' && nf < MAXDATEFIELDS)
 {

  while (*str != '\0' && !isalnum((unsigned char) *str))
   str++;

  if (*str == '\0')
   return DTERR_BAD_FORMAT;

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
     haveTextMonth = 1;
     break;

    default:
     return DTERR_BAD_FORMAT;
   }
   if (fmask & dmask)
    return DTERR_BAD_FORMAT;

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
   return DTERR_BAD_FORMAT;

  dterr = DecodeNumber(len, field[i], haveTextMonth, fmask,
        &dmask, tm,
        &fsec, is2digits);
  if (dterr)
   return dterr;

  if (fmask & dmask)
   return DTERR_BAD_FORMAT;

  fmask |= dmask;
  *tmask |= dmask;
 }

 if ((fmask & ~(DTK_M(DOY) | DTK_M(TZ))) != DTK_DATE_M)
  return DTERR_BAD_FORMAT;



 return 0;
}
