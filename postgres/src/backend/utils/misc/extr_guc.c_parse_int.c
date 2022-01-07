
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 int GUC_UNIT ;
 int GUC_UNIT_MEMORY ;
 double INT_MAX ;
 double INT_MIN ;
 int convert_to_base_unit (double,char*,int,double*) ;
 scalar_t__ errno ;
 char* gettext_noop (char*) ;
 scalar_t__ isnan (double) ;
 scalar_t__ isspace (unsigned char) ;
 char* memory_units_hint ;
 double rint (double) ;
 double strtod (char const*,char**) ;
 double strtol (char const*,char**,int ) ;
 char* time_units_hint ;

bool
parse_int(const char *value, int *result, int flags, const char **hintmsg)
{




 double val;
 char *endptr;


 if (result)
  *result = 0;
 if (hintmsg)
  *hintmsg = ((void*)0);
 errno = 0;
 val = strtol(value, &endptr, 0);
 if (*endptr == '.' || *endptr == 'e' || *endptr == 'E' ||
  errno == ERANGE)
 {
  errno = 0;
  val = strtod(value, &endptr);
 }

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


 val = rint(val);

 if (val > INT_MAX || val < INT_MIN)
 {
  if (hintmsg)
   *hintmsg = gettext_noop("Value exceeds integer range.");
  return 0;
 }

 if (result)
  *result = (int) val;
 return 1;
}
