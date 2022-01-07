
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8 ;
typedef int int64 ;


 int PG_INT64_MIN ;
 int fprintf (int ,char*,char const*) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 int pg_mul_s64_overflow (int ,int,int *) ;
 int pg_sub_s64_overflow (int ,int ,int *) ;
 int stderr ;
 scalar_t__ unlikely (int) ;

bool
strtoint64(const char *str, bool errorOK, int64 *result)
{
 const char *ptr = str;
 int64 tmp = 0;
 bool neg = 0;
 while (*ptr && isspace((unsigned char) *ptr))
  ptr++;


 if (*ptr == '-')
 {
  ptr++;
  neg = 1;
 }
 else if (*ptr == '+')
  ptr++;


 if (unlikely(!isdigit((unsigned char) *ptr)))
  goto invalid_syntax;


 while (*ptr && isdigit((unsigned char) *ptr))
 {
  int8 digit = (*ptr++ - '0');

  if (unlikely(pg_mul_s64_overflow(tmp, 10, &tmp)) ||
   unlikely(pg_sub_s64_overflow(tmp, digit, &tmp)))
   goto out_of_range;
 }


 while (*ptr != '\0' && isspace((unsigned char) *ptr))
  ptr++;

 if (unlikely(*ptr != '\0'))
  goto invalid_syntax;

 if (!neg)
 {
  if (unlikely(tmp == PG_INT64_MIN))
   goto out_of_range;
  tmp = -tmp;
 }

 *result = tmp;
 return 1;

out_of_range:
 if (!errorOK)
  fprintf(stderr,
    "value \"%s\" is out of range for type bigint\n", str);
 return 0;

invalid_syntax:
 if (!errorOK)
  fprintf(stderr,
    "invalid input syntax for type bigint: \"%s\"\n", str);
 return 0;
}
