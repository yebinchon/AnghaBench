
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8 ;
typedef int int16 ;


 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int PG_INT16_MIN ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,char const*) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ likely (char const) ;
 int pg_mul_s16_overflow (int ,int,int *) ;
 int pg_sub_s16_overflow (int ,int ,int *) ;
 scalar_t__ unlikely (int) ;

int16
pg_strtoint16(const char *s)
{
 const char *ptr = s;
 int16 tmp = 0;
 bool neg = 0;


 while (likely(*ptr) && isspace((unsigned char) *ptr))
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

  if (unlikely(pg_mul_s16_overflow(tmp, 10, &tmp)) ||
   unlikely(pg_sub_s16_overflow(tmp, digit, &tmp)))
   goto out_of_range;
 }


 while (*ptr != '\0' && isspace((unsigned char) *ptr))
  ptr++;

 if (unlikely(*ptr != '\0'))
  goto invalid_syntax;

 if (!neg)
 {

  if (unlikely(tmp == PG_INT16_MIN))
   goto out_of_range;
  tmp = -tmp;
 }

 return tmp;

out_of_range:
 ereport(ERROR,
   (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
    errmsg("value \"%s\" is out of range for type %s",
     s, "smallint")));

invalid_syntax:
 ereport(ERROR,
   (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
    errmsg("invalid input syntax for type %s: \"%s\"",
     "smallint", s)));

 return 0;
}
