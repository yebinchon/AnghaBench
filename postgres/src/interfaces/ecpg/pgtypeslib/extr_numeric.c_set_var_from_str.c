
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int weight; scalar_t__ dscale; scalar_t__* digits; int ndigits; scalar_t__ rscale; void* sign; } ;
typedef TYPE_1__ numeric ;


 int INT_MAX ;
 void* NUMERIC_NAN ;
 void* NUMERIC_NEG ;
 void* NUMERIC_POS ;
 scalar_t__ PGTYPES_NUM_BAD_NUMERIC ;
 scalar_t__ alloc_var (TYPE_1__*,int ) ;
 scalar_t__ errno ;
 scalar_t__ isdigit (unsigned char) ;
 int isspace (unsigned char) ;
 scalar_t__ pg_strncasecmp (char*,char*,int) ;
 int strlen (char*) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static int
set_var_from_str(char *str, char **ptr, numeric *dest)
{
 bool have_dp = 0;
 int i = 0;

 errno = 0;
 *ptr = str;
 while (*(*ptr))
 {
  if (!isspace((unsigned char) *(*ptr)))
   break;
  (*ptr)++;
 }

 if (pg_strncasecmp(*ptr, "NaN", 3) == 0)
 {
  *ptr += 3;
  dest->sign = NUMERIC_NAN;


  while (*(*ptr))
  {
   if (!isspace((unsigned char) *(*ptr)))
   {
    errno = PGTYPES_NUM_BAD_NUMERIC;
    return -1;
   }
   (*ptr)++;
  }

  return 0;
 }

 if (alloc_var(dest, strlen((*ptr))) < 0)
  return -1;
 dest->weight = -1;
 dest->dscale = 0;
 dest->sign = NUMERIC_POS;

 switch (*(*ptr))
 {
  case '+':
   dest->sign = NUMERIC_POS;
   (*ptr)++;
   break;

  case '-':
   dest->sign = NUMERIC_NEG;
   (*ptr)++;
   break;
 }

 if (*(*ptr) == '.')
 {
  have_dp = 1;
  (*ptr)++;
 }

 if (!isdigit((unsigned char) *(*ptr)))
 {
  errno = PGTYPES_NUM_BAD_NUMERIC;
  return -1;
 }

 while (*(*ptr))
 {
  if (isdigit((unsigned char) *(*ptr)))
  {
   dest->digits[i++] = *(*ptr)++ - '0';
   if (!have_dp)
    dest->weight++;
   else
    dest->dscale++;
  }
  else if (*(*ptr) == '.')
  {
   if (have_dp)
   {
    errno = PGTYPES_NUM_BAD_NUMERIC;
    return -1;
   }
   have_dp = 1;
   (*ptr)++;
  }
  else
   break;
 }
 dest->ndigits = i;


 if (*(*ptr) == 'e' || *(*ptr) == 'E')
 {
  long exponent;
  char *endptr;

  (*ptr)++;
  exponent = strtol(*ptr, &endptr, 10);
  if (endptr == (*ptr))
  {
   errno = PGTYPES_NUM_BAD_NUMERIC;
   return -1;
  }
  (*ptr) = endptr;
  if (exponent >= INT_MAX / 2 || exponent <= -(INT_MAX / 2))
  {
   errno = PGTYPES_NUM_BAD_NUMERIC;
   return -1;
  }
  dest->weight += (int) exponent;
  dest->dscale -= (int) exponent;
  if (dest->dscale < 0)
   dest->dscale = 0;
 }


 while (*(*ptr))
 {
  if (!isspace((unsigned char) *(*ptr)))
  {
   errno = PGTYPES_NUM_BAD_NUMERIC;
   return -1;
  }
  (*ptr)++;
 }


 while (dest->ndigits > 0 && *(dest->digits) == 0)
 {
  (dest->digits)++;
  (dest->weight)--;
  (dest->ndigits)--;
 }
 if (dest->ndigits == 0)
  dest->weight = 0;

 dest->rscale = dest->dscale;
 return 0;
}
