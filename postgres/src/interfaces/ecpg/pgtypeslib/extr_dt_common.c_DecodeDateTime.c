
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; int tm_isdst; int tm_year; int tm_mon; int tm_mday; int tm_wday; } ;
typedef double fsec_t ;



 int AM ;

 int BC ;
 int const DAY ;


 int DTK_DATE_M ;



 int DTK_M (int const) ;
 int DTK_TIME_M ;
 int DecodeDate (char*,int,int*,struct tm*,int) ;
 int DecodeNumber (int,char*,int,int*,struct tm*,double*,int*,int) ;
 int DecodeNumberField (int,char*,int,int*,struct tm*,double*,int*) ;
 int DecodePosixTimezone (char*,int*) ;
 int DecodeSpecial (int,char*,int*) ;
 int DecodeTime (char*,int*,struct tm*,double*) ;
 int DecodeTimezone (char*,int*) ;
 int GetCurrentDateTime (struct tm*) ;
 int const HOUR ;
 int HR24 ;


 int const MINUTE ;

 int PM ;

 int const SECOND ;


 double USECS_PER_DAY ;
 int const YEAR ;
 int date2j (int,int,int) ;
 int** day_tab ;
 int dt2time (double,int*,int*,int*,double*) ;
 int isalpha (unsigned char) ;
 int isdigit (unsigned char) ;
 size_t isleap (int) ;
 int j2date (int,int*,int*,int*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 double strtod (char*,char**) ;
 int strtoint (char*,char**,int) ;

int
DecodeDateTime(char **field, int *ftype, int nf,
      int *dtype, struct tm *tm, fsec_t *fsec, bool EuroDates)
{
 int fmask = 0,
    tmask,
    type;
 int ptype = 0;
 int i;
 int val;
 int mer = HR24;
 bool haveTextMonth = 0;
 bool is2digits = 0;
 bool bc = 0;
 int t = 0;
 int *tzp = &t;





 *dtype = 153;
 tm->tm_hour = 0;
 tm->tm_min = 0;
 tm->tm_sec = 0;
 *fsec = 0;

 tm->tm_isdst = -1;
 if (tzp != ((void*)0))
  *tzp = 0;

 for (i = 0; i < nf; i++)
 {
  switch (ftype[i])
  {
   case 153:





    if (ptype == 150)
    {
     char *cp;
     int val;

     if (tzp == ((void*)0))
      return -1;

     val = strtoint(field[i], &cp, 10);
     if (*cp != '-')
      return -1;

     j2date(val, &tm->tm_year, &tm->tm_mon, &tm->tm_mday);

     if (DecodeTimezone(cp, tzp) != 0)
      return -1;

     tmask = DTK_DATE_M | DTK_TIME_M | DTK_M(129);
     ptype = 0;
     break;
    }






    else if (((fmask & DTK_DATE_M) == DTK_DATE_M)
       || (ptype != 0))
    {

     if (tzp == ((void*)0))
      return -1;

     if (isdigit((unsigned char) *field[i]) || ptype != 0)
     {
      char *cp;

      if (ptype != 0)
      {

       if (ptype != 142)
        return -1;
       ptype = 0;
      }






      if ((fmask & DTK_TIME_M) == DTK_TIME_M)
       return -1;

      if ((cp = strchr(field[i], '-')) == ((void*)0))
       return -1;


      if (DecodeTimezone(cp, tzp) != 0)
       return -1;
      *cp = '\0';





      if ((ftype[i] = DecodeNumberField(strlen(field[i]), field[i], fmask,
                &tmask, tm, fsec, &is2digits)) < 0)
       return -1;





      tmask |= DTK_M(129);
     }
     else
     {
      if (DecodePosixTimezone(field[i], tzp) != 0)
       return -1;

      ftype[i] = 139;
      tmask = DTK_M(129);
     }
    }
    else if (DecodeDate(field[i], fmask, &tmask, tm, EuroDates) != 0)
     return -1;
    break;

   case 142:
    if (DecodeTime(field[i], &tmask, tm, fsec) != 0)
     return -1;






    if (tm->tm_hour > 24 ||
     (tm->tm_hour == 24 && (tm->tm_min > 0 || tm->tm_sec > 0)))
     return -1;
    break;

   case 139:
    {
     int tz;

     if (tzp == ((void*)0))
      return -1;

     if (DecodeTimezone(field[i], &tz) != 0)
      return -1;





     if (i > 0 && (fmask & DTK_M(129)) != 0 &&
      ftype[i - 1] == 139 &&
      isalpha((unsigned char) *field[i - 1]))
     {
      *tzp -= tz;
      tmask = 0;
     }
     else
     {
      *tzp = tz;
      tmask = DTK_M(129);
     }
    }
    break;

   case 146:





    if (ptype != 0)
    {
     char *cp;
     int val;

     val = strtoint(field[i], &cp, 10);





     if (*cp == '.')
      switch (ptype)
      {
       case 150:
       case 142:
       case 145:
        break;
       default:
        return 1;
        break;
      }
     else if (*cp != '\0')
      return -1;

     switch (ptype)
     {
      case 138:
       tm->tm_year = val;
       tmask = DTK_M(YEAR);
       break;

      case 148:





       if ((fmask & DTK_M(131)) != 0 &&
        (fmask & DTK_M(HOUR)) != 0)
       {
        tm->tm_min = val;
        tmask = DTK_M(MINUTE);
       }
       else
       {
        tm->tm_mon = val;
        tmask = DTK_M(131);
       }
       break;

      case 152:
       tm->tm_mday = val;
       tmask = DTK_M(DAY);
       break;

      case 151:
       tm->tm_hour = val;
       tmask = DTK_M(HOUR);
       break;

      case 149:
       tm->tm_min = val;
       tmask = DTK_M(MINUTE);
       break;

      case 145:
       tm->tm_sec = val;
       tmask = DTK_M(SECOND);
       if (*cp == '.')
       {
        double frac;

        frac = strtod(cp, &cp);
        if (*cp != '\0')
         return -1;
        *fsec = frac * 1000000;
       }
       break;

      case 139:
       tmask = DTK_M(129);
       if (DecodeTimezone(field[i], tzp) != 0)
        return -1;
       break;

      case 150:



       tmask = DTK_DATE_M;
       j2date(val, &tm->tm_year, &tm->tm_mon, &tm->tm_mday);

       if (*cp == '.')
       {
        double time;

        time = strtod(cp, &cp);
        if (*cp != '\0')
         return -1;

        tmask |= DTK_TIME_M;
        dt2time((time * USECS_PER_DAY), &tm->tm_hour, &tm->tm_min, &tm->tm_sec, fsec);
       }
       break;

      case 142:

       if ((ftype[i] = DecodeNumberField(strlen(field[i]), field[i], (fmask | DTK_DATE_M),
                 &tmask, tm, fsec, &is2digits)) < 0)
        return -1;

       if (tmask != DTK_TIME_M)
        return -1;
       break;

      default:
       return -1;
       break;
     }

     ptype = 0;
     *dtype = 153;
    }
    else
    {
     char *cp;
     int flen;

     flen = strlen(field[i]);
     cp = strchr(field[i], '.');


     if (cp != ((void*)0) && !(fmask & DTK_DATE_M))
     {
      if (DecodeDate(field[i], fmask, &tmask, tm, EuroDates) != 0)
       return -1;
     }

     else if (cp != ((void*)0) && flen - strlen(cp) > 2)
     {





      if ((ftype[i] = DecodeNumberField(flen, field[i], fmask,
                &tmask, tm, fsec, &is2digits)) < 0)
       return -1;
     }
     else if (flen > 4)
     {
      if ((ftype[i] = DecodeNumberField(flen, field[i], fmask,
                &tmask, tm, fsec, &is2digits)) < 0)
       return -1;
     }

     else if (DecodeNumber(flen, field[i], fmask,
            &tmask, tm, fsec, &is2digits, EuroDates) != 0)
      return -1;
    }
    break;

   case 143:
   case 144:
    type = DecodeSpecial(i, field[i], &val);
    if (type == 133)
     continue;

    tmask = DTK_M(type);
    switch (type)
    {
     case 130:
      switch (val)
      {
       case 147:
        tmask = (DTK_DATE_M | DTK_TIME_M | DTK_M(129));
        *dtype = 153;
        GetCurrentDateTime(tm);
        break;

       case 137:
        tmask = DTK_DATE_M;
        *dtype = 153;
        GetCurrentDateTime(tm);
        j2date(date2j(tm->tm_year, tm->tm_mon, tm->tm_mday) - 1,
            &tm->tm_year, &tm->tm_mon, &tm->tm_mday);
        tm->tm_hour = 0;
        tm->tm_min = 0;
        tm->tm_sec = 0;
        break;

       case 141:
        tmask = DTK_DATE_M;
        *dtype = 153;
        GetCurrentDateTime(tm);
        tm->tm_hour = 0;
        tm->tm_min = 0;
        tm->tm_sec = 0;
        break;

       case 140:
        tmask = DTK_DATE_M;
        *dtype = 153;
        GetCurrentDateTime(tm);
        j2date(date2j(tm->tm_year, tm->tm_mon, tm->tm_mday) + 1,
            &tm->tm_year, &tm->tm_mon, &tm->tm_mday);
        tm->tm_hour = 0;
        tm->tm_min = 0;
        tm->tm_sec = 0;
        break;

       case 136:
        tmask = (DTK_TIME_M | DTK_M(129));
        *dtype = 153;
        tm->tm_hour = 0;
        tm->tm_min = 0;
        tm->tm_sec = 0;
        if (tzp != ((void*)0))
         *tzp = 0;
        break;

       default:
        *dtype = val;
      }

      break;

     case 131:





      if ((fmask & DTK_M(131)) && !haveTextMonth &&
       !(fmask & DTK_M(DAY)) && tm->tm_mon >= 1 && tm->tm_mon <= 31)
      {
       tm->tm_mday = tm->tm_mon;
       tmask = DTK_M(DAY);
      }
      haveTextMonth = 1;
      tm->tm_mon = val;
      break;

     case 134:





      tmask |= DTK_M(135);
      tm->tm_isdst = 1;
      if (tzp == ((void*)0))
       return -1;
      *tzp -= val;
      break;

     case 135:





      tmask |= DTK_M(129);
      tm->tm_isdst = 1;
      if (tzp == ((void*)0))
       return -1;
      *tzp = -val;
      ftype[i] = 139;
      break;

     case 129:
      tm->tm_isdst = 0;
      if (tzp == ((void*)0))
       return -1;
      *tzp = -val;
      ftype[i] = 139;
      break;

     case 133:
      break;

     case 155:
      mer = val;
      break;

     case 156:
      bc = (val == BC);
      break;

     case 154:
      tm->tm_wday = val;
      break;

     case 128:
      tmask = 0;
      ptype = val;
      break;

     case 132:





      tmask = 0;


      if ((fmask & DTK_DATE_M) != DTK_DATE_M)
       return -1;







      if (i >= nf - 1 ||
       (ftype[i + 1] != 146 &&
        ftype[i + 1] != 142 &&
        ftype[i + 1] != 153))
       return -1;

      ptype = val;
      break;

     default:
      return -1;
    }
    break;

   default:
    return -1;
  }

  if (tmask & fmask)
   return -1;
  fmask |= tmask;
 }


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

 if (mer != HR24 && tm->tm_hour > 12)
  return -1;
 if (mer == AM && tm->tm_hour == 12)
  tm->tm_hour = 0;
 else if (mer == PM && tm->tm_hour != 12)
  tm->tm_hour += 12;


 if (*dtype == 153)
 {
  if ((fmask & DTK_DATE_M) != DTK_DATE_M)
   return ((fmask & DTK_TIME_M) == DTK_TIME_M) ? 1 : -1;





  if (tm->tm_mday < 1 || tm->tm_mday > day_tab[isleap(tm->tm_year)][tm->tm_mon - 1])
   return -1;






  if ((fmask & DTK_DATE_M) == DTK_DATE_M && tzp != ((void*)0) && !(fmask & DTK_M(129)) && (fmask & DTK_M(134)))
   return -1;
 }

 return 0;
}
