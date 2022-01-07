
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union un_fmt_comb {char* str_val; int uint_val; char char_val; double int64_val; } ;
typedef double timestamp ;
struct tm {size_t tm_mon; int tm_year; int tm_mday; int tm_hour; int tm_yday; int tm_min; int tm_sec; } ;
typedef int date ;


 int PGTYPES_TYPE_CHAR ;
 int PGTYPES_TYPE_INT64 ;
 int PGTYPES_TYPE_NOTHING ;
 int PGTYPES_TYPE_STRING_CONSTANT ;
 int PGTYPES_TYPE_UINT ;
 int PGTYPES_TYPE_UINT_2_LS ;
 int PGTYPES_TYPE_UINT_2_LZ ;
 int PGTYPES_TYPE_UINT_3_LZ ;
 double SetEpochTimestamp () ;
 char** days ;
 char** months ;
 char** pgtypes_date_months ;
 char** pgtypes_date_weekdays_short ;
 int pgtypes_fmt_replace (union un_fmt_comb,int,char**,int*) ;
 int strftime (char*,int,char const*,struct tm*) ;

__attribute__((used)) static int
dttofmtasc_replace(timestamp * ts, date dDate, int dow, struct tm *tm,
       char *output, int *pstr_len, const char *fmtstr)
{
 union un_fmt_comb replace_val;
 int replace_type;
 int i;
 const char *p = fmtstr;
 char *q = output;

 while (*p)
 {
  if (*p == '%')
  {
   p++;

   replace_type = PGTYPES_TYPE_NOTHING;
   switch (*p)
   {


    case 'a':
     replace_val.str_val = pgtypes_date_weekdays_short[dow];
     replace_type = PGTYPES_TYPE_STRING_CONSTANT;
     break;


    case 'A':
     replace_val.str_val = days[dow];
     replace_type = PGTYPES_TYPE_STRING_CONSTANT;
     break;


    case 'b':
    case 'h':
     replace_val.str_val = months[tm->tm_mon];
     replace_type = PGTYPES_TYPE_STRING_CONSTANT;
     break;


    case 'B':
     replace_val.str_val = pgtypes_date_months[tm->tm_mon];
     replace_type = PGTYPES_TYPE_STRING_CONSTANT;
     break;





    case 'c':

     break;

    case 'C':
     replace_val.uint_val = tm->tm_year / 100;
     replace_type = PGTYPES_TYPE_UINT_2_LZ;
     break;

    case 'd':
     replace_val.uint_val = tm->tm_mday;
     replace_type = PGTYPES_TYPE_UINT_2_LZ;
     break;

    case 'D':
     i = dttofmtasc_replace(ts, dDate, dow, tm,
             q, pstr_len,
             "%m/%d/%y");
     if (i)
      return i;
     break;

    case 'e':
     replace_val.uint_val = tm->tm_mday;
     replace_type = PGTYPES_TYPE_UINT_2_LS;
     break;




    case 'E':
     {
      char tmp[4] = "%Ex";

      p++;
      if (*p == '\0')
       return -1;
      tmp[2] = *p;




      tm->tm_mon -= 1;
      i = strftime(q, *pstr_len, tmp, tm);
      if (i == 0)
       return -1;
      while (*q)
      {
       q++;
       (*pstr_len)--;
      }
      tm->tm_mon += 1;
      replace_type = PGTYPES_TYPE_NOTHING;
      break;
     }





    case 'G':
     {

      const char *fmt = "%G";

      tm->tm_mon -= 1;
      i = strftime(q, *pstr_len, fmt, tm);
      if (i == 0)
       return -1;
      while (*q)
      {
       q++;
       (*pstr_len)--;
      }
      tm->tm_mon += 1;
      replace_type = PGTYPES_TYPE_NOTHING;
     }
     break;





    case 'g':
     {
      const char *fmt = "%g";


      tm->tm_mon -= 1;
      i = strftime(q, *pstr_len, fmt, tm);
      if (i == 0)
       return -1;
      while (*q)
      {
       q++;
       (*pstr_len)--;
      }
      tm->tm_mon += 1;
      replace_type = PGTYPES_TYPE_NOTHING;
     }
     break;

    case 'H':
     replace_val.uint_val = tm->tm_hour;
     replace_type = PGTYPES_TYPE_UINT_2_LZ;
     break;

    case 'I':
     replace_val.uint_val = tm->tm_hour % 12;
     replace_type = PGTYPES_TYPE_UINT_2_LZ;
     break;





    case 'j':
     replace_val.uint_val = tm->tm_yday;
     replace_type = PGTYPES_TYPE_UINT_3_LZ;
     break;





    case 'k':
     replace_val.uint_val = tm->tm_hour;
     replace_type = PGTYPES_TYPE_UINT_2_LS;
     break;





    case 'l':
     replace_val.uint_val = tm->tm_hour % 12;
     replace_type = PGTYPES_TYPE_UINT_2_LS;
     break;

    case 'm':
     replace_val.uint_val = tm->tm_mon;
     replace_type = PGTYPES_TYPE_UINT_2_LZ;
     break;

    case 'M':
     replace_val.uint_val = tm->tm_min;
     replace_type = PGTYPES_TYPE_UINT_2_LZ;
     break;

    case 'n':
     replace_val.char_val = '\n';
     replace_type = PGTYPES_TYPE_CHAR;
     break;


    case 'p':
     if (tm->tm_hour < 12)
      replace_val.str_val = "AM";
     else
      replace_val.str_val = "PM";
     replace_type = PGTYPES_TYPE_STRING_CONSTANT;
     break;


    case 'P':
     if (tm->tm_hour < 12)
      replace_val.str_val = "am";
     else
      replace_val.str_val = "pm";
     replace_type = PGTYPES_TYPE_STRING_CONSTANT;
     break;


    case 'r':
     i = dttofmtasc_replace(ts, dDate, dow, tm,
             q, pstr_len,
             "%I:%M:%S %p");
     if (i)
      return i;
     break;

    case 'R':
     i = dttofmtasc_replace(ts, dDate, dow, tm,
             q, pstr_len,
             "%H:%M");
     if (i)
      return i;
     break;

    case 's':
     replace_val.int64_val = (*ts - SetEpochTimestamp()) / 1000000.0;
     replace_type = PGTYPES_TYPE_INT64;
     break;

    case 'S':
     replace_val.uint_val = tm->tm_sec;
     replace_type = PGTYPES_TYPE_UINT_2_LZ;
     break;

    case 't':
     replace_val.char_val = '\t';
     replace_type = PGTYPES_TYPE_CHAR;
     break;

    case 'T':
     i = dttofmtasc_replace(ts, dDate, dow, tm,
             q, pstr_len,
             "%H:%M:%S");
     if (i)
      return i;
     break;





    case 'u':
     replace_val.uint_val = dow;
     if (replace_val.uint_val == 0)
      replace_val.uint_val = 7;
     replace_type = PGTYPES_TYPE_UINT;
     break;

    case 'U':
     tm->tm_mon -= 1;
     i = strftime(q, *pstr_len, "%U", tm);
     if (i == 0)
      return -1;
     while (*q)
     {
      q++;
      (*pstr_len)--;
     }
     tm->tm_mon += 1;
     replace_type = PGTYPES_TYPE_NOTHING;
     break;





    case 'V':
     {

      const char *fmt = "%V";

      i = strftime(q, *pstr_len, fmt, tm);
      if (i == 0)
       return -1;
      while (*q)
      {
       q++;
       (*pstr_len)--;
      }
      replace_type = PGTYPES_TYPE_NOTHING;
     }
     break;





    case 'w':
     replace_val.uint_val = dow;
     replace_type = PGTYPES_TYPE_UINT;
     break;

    case 'W':
     tm->tm_mon -= 1;
     i = strftime(q, *pstr_len, "%U", tm);
     if (i == 0)
      return -1;
     while (*q)
     {
      q++;
      (*pstr_len)--;
     }
     tm->tm_mon += 1;
     replace_type = PGTYPES_TYPE_NOTHING;
     break;





    case 'x':
     {
      const char *fmt = "%x";


      tm->tm_mon -= 1;
      i = strftime(q, *pstr_len, fmt, tm);
      if (i == 0)
       return -1;
      while (*q)
      {
       q++;
       (*pstr_len)--;
      }
      tm->tm_mon += 1;
      replace_type = PGTYPES_TYPE_NOTHING;
     }
     break;





    case 'X':
     tm->tm_mon -= 1;
     i = strftime(q, *pstr_len, "%X", tm);
     if (i == 0)
      return -1;
     while (*q)
     {
      q++;
      (*pstr_len)--;
     }
     tm->tm_mon += 1;
     replace_type = PGTYPES_TYPE_NOTHING;
     break;

    case 'y':
     replace_val.uint_val = tm->tm_year % 100;
     replace_type = PGTYPES_TYPE_UINT_2_LZ;
     break;

    case 'Y':
     replace_val.uint_val = tm->tm_year;
     replace_type = PGTYPES_TYPE_UINT;
     break;

    case 'z':
     tm->tm_mon -= 1;
     i = strftime(q, *pstr_len, "%z", tm);
     if (i == 0)
      return -1;
     while (*q)
     {
      q++;
      (*pstr_len)--;
     }
     tm->tm_mon += 1;
     replace_type = PGTYPES_TYPE_NOTHING;
     break;

    case 'Z':
     tm->tm_mon -= 1;
     i = strftime(q, *pstr_len, "%Z", tm);
     if (i == 0)
      return -1;
     while (*q)
     {
      q++;
      (*pstr_len)--;
     }
     tm->tm_mon += 1;
     replace_type = PGTYPES_TYPE_NOTHING;
     break;

    case '%':
     replace_val.char_val = '%';
     replace_type = PGTYPES_TYPE_CHAR;
     break;
    case '\0':





     return -1;
    default:




     if (*pstr_len > 1)
     {
      *q = '%';
      q++;
      (*pstr_len)--;
      if (*pstr_len > 1)
      {
       *q = *p;
       q++;
       (*pstr_len)--;
      }
      else
      {
       *q = '\0';
       return -1;
      }
      *q = '\0';
     }
     else
      return -1;
     break;
   }
   i = pgtypes_fmt_replace(replace_val, replace_type, &q, pstr_len);
   if (i)
    return i;
  }
  else
  {
   if (*pstr_len > 1)
   {
    *q = *p;
    (*pstr_len)--;
    q++;
    *q = '\0';
   }
   else
    return -1;
  }
  p++;
 }
 return 0;
}
