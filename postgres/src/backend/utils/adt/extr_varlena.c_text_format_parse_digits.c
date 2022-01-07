
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char int8 ;


 int ADVANCE_PARSE_POINTER (char const*,char const*) ;
 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pg_add_s32_overflow (int,char,int*) ;
 int pg_mul_s32_overflow (int,int,int*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool
text_format_parse_digits(const char **ptr, const char *end_ptr, int *value)
{
 bool found = 0;
 const char *cp = *ptr;
 int val = 0;

 while (*cp >= '0' && *cp <= '9')
 {
  int8 digit = (*cp - '0');

  if (unlikely(pg_mul_s32_overflow(val, 10, &val)) ||
   unlikely(pg_add_s32_overflow(val, digit, &val)))
   ereport(ERROR,
     (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
      errmsg("number is out of range")));
  ADVANCE_PARSE_POINTER(cp, end_ptr);
  found = 1;
 }

 *ptr = cp;
 *value = val;

 return found;
}
