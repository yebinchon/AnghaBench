
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 int GUC_UNIT ;
 int GUC_UNIT_MEMORY ;
 int convert_to_base_unit (double,char*,int,double*) ;
 scalar_t__ errno ;
 scalar_t__ isnan (double) ;
 scalar_t__ isspace (unsigned char) ;
 char* memory_units_hint ;
 double strtod (char const*,char**) ;
 char* time_units_hint ;

bool
parse_real(const char *value, double *result, int flags, const char **hintmsg)
{
 double val;
 char *endptr;


 if (result)
  *result = 0;
 if (hintmsg)
  *hintmsg = ((void*)0);

 errno = 0;
 val = strtod(value, &endptr);

 if (endptr == value || errno == ERANGE)
  return 0;


 if (isnan(val))
  return 0;


 while (isspace((unsigned char) *endptr))
  endptr++;


 if (*endptr != '\0')
 {
  if ((flags & GUC_UNIT) == 0)
   return 0;

  if (!convert_to_base_unit(val,
          endptr, (flags & GUC_UNIT),
          &val))
  {

   if (hintmsg)
   {
    if (flags & GUC_UNIT_MEMORY)
     *hintmsg = memory_units_hint;
    else
     *hintmsg = time_units_hint;
   }
   return 0;
  }
 }

 if (result)
  *result = val;
 return 1;
}
