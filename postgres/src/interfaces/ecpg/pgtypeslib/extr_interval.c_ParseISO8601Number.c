
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTERR_BAD_FORMAT ;
 int DTERR_FIELD_OVERFLOW ;
 double INT_MAX ;
 double INT_MIN ;
 scalar_t__ errno ;
 scalar_t__ floor (double) ;
 scalar_t__ isdigit (unsigned char) ;
 double strtod (char const*,char**) ;

__attribute__((used)) static int
ParseISO8601Number(const char *str, char **endptr, int *ipart, double *fpart)
{
 double val;

 if (!(isdigit((unsigned char) *str) || *str == '-' || *str == '.'))
  return DTERR_BAD_FORMAT;
 errno = 0;
 val = strtod(str, endptr);

 if (*endptr == str || errno != 0)
  return DTERR_BAD_FORMAT;

 if (val < INT_MIN || val > INT_MAX)
  return DTERR_FIELD_OVERFLOW;

 if (val >= 0)
  *ipart = (int) floor(val);
 else
  *ipart = (int) -floor(-val);
 *fpart = val - *ipart;
 return 0;
}
