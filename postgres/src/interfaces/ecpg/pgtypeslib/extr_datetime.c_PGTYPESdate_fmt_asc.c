
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union un_fmt_comb {char* str_val; int uint_val; } ;
struct tm {int tm_year; int tm_mon; int tm_mday; } ;
typedef scalar_t__ date ;


 int PGTYPES_DATE_NUM_MAX_DIGITS ;
 int PGTYPESdate_dayofweek (scalar_t__) ;
 scalar_t__ date2j (int,int,int) ;
 int free (char*) ;
 int j2date (scalar_t__,int*,int*,int*) ;
 int memcpy (char*,char*,int ) ;
 char** months ;
 char* pgtypes_alloc (int ) ;
 char** pgtypes_date_weekdays_short ;
 int snprintf (char*,int ,char*,int) ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

int
PGTYPESdate_fmt_asc(date dDate, const char *fmtstring, char *outbuf)
{
 static struct
 {
  char *format;
  int component;
 } mapping[] =
 {




  {
   "ddd", 137
  },
  {
   "dd", 138
  },
  {
   "mmm", 135
  },
  {
   "mm", 136
  },
  {
   "yyyy", 134
  },
  {
   "yy", 133
  },
  {
   ((void*)0), 0
  }
 };

 union un_fmt_comb replace_val;
 int replace_type;

 int i;
 int dow;
 char *start_pattern;
 struct tm tm;


 strcpy(outbuf, fmtstring);


 j2date(dDate + date2j(2000, 1, 1), &(tm.tm_year), &(tm.tm_mon), &(tm.tm_mday));
 dow = PGTYPESdate_dayofweek(dDate);

 for (i = 0; mapping[i].format != ((void*)0); i++)
 {
  while ((start_pattern = strstr(outbuf, mapping[i].format)) != ((void*)0))
  {
   switch (mapping[i].component)
   {
    case 137:
     replace_val.str_val = pgtypes_date_weekdays_short[dow];
     replace_type = 132;
     break;
    case 138:
     replace_val.uint_val = tm.tm_mday;
     replace_type = 129;
     break;
    case 135:
     replace_val.str_val = months[tm.tm_mon - 1];
     replace_type = 132;
     break;
    case 136:
     replace_val.uint_val = tm.tm_mon;
     replace_type = 129;
     break;
    case 134:
     replace_val.uint_val = tm.tm_year;
     replace_type = 128;
     break;
    case 133:
     replace_val.uint_val = tm.tm_year % 100;
     replace_type = 129;
     break;
    default:




     replace_val.str_val = " ";
     replace_type = 132;
   }
   switch (replace_type)
   {
    case 131:
    case 132:
     memcpy(start_pattern, replace_val.str_val,
         strlen(replace_val.str_val));
     if (replace_type == 131)
      free(replace_val.str_val);
     break;
    case 130:
     {
      char *t = pgtypes_alloc(PGTYPES_DATE_NUM_MAX_DIGITS);

      if (!t)
       return -1;
      snprintf(t, PGTYPES_DATE_NUM_MAX_DIGITS,
         "%u", replace_val.uint_val);
      memcpy(start_pattern, t, strlen(t));
      free(t);
     }
     break;
    case 129:
     {
      char *t = pgtypes_alloc(PGTYPES_DATE_NUM_MAX_DIGITS);

      if (!t)
       return -1;
      snprintf(t, PGTYPES_DATE_NUM_MAX_DIGITS,
         "%02u", replace_val.uint_val);
      memcpy(start_pattern, t, strlen(t));
      free(t);
     }
     break;
    case 128:
     {
      char *t = pgtypes_alloc(PGTYPES_DATE_NUM_MAX_DIGITS);

      if (!t)
       return -1;
      snprintf(t, PGTYPES_DATE_NUM_MAX_DIGITS,
         "%04u", replace_val.uint_val);
      memcpy(start_pattern, t, strlen(t));
      free(t);
     }
     break;
    default:





     break;
   }
  }
 }
 return 0;
}
