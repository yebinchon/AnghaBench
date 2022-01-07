
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union un_fmt_comb {unsigned int uint_val; unsigned long luint_val; int * str_val; } ;





 int errno ;
 char* find_end_token (char*,char*) ;
 int * pgtypes_strdup (char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static int
pgtypes_defmt_scan(union un_fmt_comb *scan_val, int scan_type, char **pstr, char *pfmt)
{





 char last_char;
 int err = 0;
 char *pstr_end;
 char *strtol_end = ((void*)0);

 while (**pstr == ' ')
  pstr++;
 pstr_end = find_end_token(*pstr, pfmt);
 if (!pstr_end)
 {

  return 1;
 }
 last_char = *pstr_end;
 *pstr_end = '\0';

 switch (scan_type)
 {
  case 129:





   while (**pstr == ' ')
    (*pstr)++;
   errno = 0;
   scan_val->uint_val = (unsigned int) strtol(*pstr, &strtol_end, 10);
   if (errno)
    err = 1;
   break;
  case 128:
   while (**pstr == ' ')
    (*pstr)++;
   errno = 0;
   scan_val->luint_val = (unsigned long int) strtol(*pstr, &strtol_end, 10);
   if (errno)
    err = 1;
   break;
  case 130:
   scan_val->str_val = pgtypes_strdup(*pstr);
   if (scan_val->str_val == ((void*)0))
    err = 1;
   break;
 }
 if (strtol_end && *strtol_end)
  *pstr = strtol_end;
 else
  *pstr = pstr_end;
 *pstr_end = last_char;
 return err;
}
