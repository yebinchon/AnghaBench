
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union un_fmt_comb {char* str_val; char char_val; double double_val; double int64_val; double uint_val; } ;


 int ENOMEM ;
 char* INT64_FORMAT ;
 int PGTYPES_FMT_NUM_MAX_DIGITS ;
 int free (char*) ;
 int memcpy (char*,char*,int) ;
 char* pgtypes_alloc (int) ;
 int snprintf (char*,int,char*,double) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int
pgtypes_fmt_replace(union un_fmt_comb replace_val, int replace_type, char **output, int *pstr_len)
{



 int i = 0;

 switch (replace_type)
 {
  case 135:
   break;
  case 134:
  case 133:
   i = strlen(replace_val.str_val);
   if (i + 1 <= *pstr_len)
   {

    memcpy(*output, replace_val.str_val, i + 1);
    *pstr_len -= i;
    *output += i;
    if (replace_type == 133)
     free(replace_val.str_val);
    return 0;
   }
   else
    return -1;
   break;
  case 138:
   if (*pstr_len >= 2)
   {
    (*output)[0] = replace_val.char_val;
    (*output)[1] = '\0';
    (*pstr_len)--;
    (*output)++;
    return 0;
   }
   else
    return -1;
   break;
  case 137:
  case 136:
  case 132:
  case 130:
  case 131:
  case 129:
  case 128:
   {
    char *t = pgtypes_alloc(PGTYPES_FMT_NUM_MAX_DIGITS);

    if (!t)
     return ENOMEM;
    switch (replace_type)
    {
     case 137:
      i = snprintf(t, PGTYPES_FMT_NUM_MAX_DIGITS,
          "%0.0g", replace_val.double_val);
      break;
     case 136:
      i = snprintf(t, PGTYPES_FMT_NUM_MAX_DIGITS,
          INT64_FORMAT, replace_val.int64_val);
      break;
     case 132:
      i = snprintf(t, PGTYPES_FMT_NUM_MAX_DIGITS,
          "%u", replace_val.uint_val);
      break;
     case 130:
      i = snprintf(t, PGTYPES_FMT_NUM_MAX_DIGITS,
          "%02u", replace_val.uint_val);
      break;
     case 131:
      i = snprintf(t, PGTYPES_FMT_NUM_MAX_DIGITS,
          "%2u", replace_val.uint_val);
      break;
     case 129:
      i = snprintf(t, PGTYPES_FMT_NUM_MAX_DIGITS,
          "%03u", replace_val.uint_val);
      break;
     case 128:
      i = snprintf(t, PGTYPES_FMT_NUM_MAX_DIGITS,
          "%04u", replace_val.uint_val);
      break;
    }

    if (i < 0 || i >= PGTYPES_FMT_NUM_MAX_DIGITS)
    {
     free(t);
     return -1;
    }
    i = strlen(t);
    *pstr_len -= i;





    if (*pstr_len <= 0)
    {
     free(t);
     return -1;
    }
    strcpy(*output, t);
    *output += i;
    free(t);
   }
   break;
  default:
   break;
 }
 return 0;
}
