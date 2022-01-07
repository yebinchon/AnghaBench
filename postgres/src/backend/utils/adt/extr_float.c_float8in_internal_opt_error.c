
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 double HUGE_VAL ;
 int RETURN_ERROR (int ,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 int errno ;
 double get_float8_infinity () ;
 double get_float8_nan () ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ pg_strncasecmp (char*,char*,int) ;
 char* pstrdup (char*) ;
 double strtod (char*,char**) ;

double
float8in_internal_opt_error(char *num, char **endptr_p,
       const char *type_name, const char *orig_string,
       bool *have_error)
{
 double val;
 char *endptr;

 if (have_error)
  *have_error = 0;


 while (*num != '\0' && isspace((unsigned char) *num))
  num++;





 if (*num == '\0')
  RETURN_ERROR(ereport(ERROR,
        (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
         errmsg("invalid input syntax for type %s: \"%s\"",
          type_name, orig_string))),
      have_error);

 errno = 0;
 val = strtod(num, &endptr);


 if (endptr == num || errno != 0)
 {
  int save_errno = errno;
  if (pg_strncasecmp(num, "NaN", 3) == 0)
  {
   val = get_float8_nan();
   endptr = num + 3;
  }
  else if (pg_strncasecmp(num, "Infinity", 8) == 0)
  {
   val = get_float8_infinity();
   endptr = num + 8;
  }
  else if (pg_strncasecmp(num, "+Infinity", 9) == 0)
  {
   val = get_float8_infinity();
   endptr = num + 9;
  }
  else if (pg_strncasecmp(num, "-Infinity", 9) == 0)
  {
   val = -get_float8_infinity();
   endptr = num + 9;
  }
  else if (pg_strncasecmp(num, "inf", 3) == 0)
  {
   val = get_float8_infinity();
   endptr = num + 3;
  }
  else if (pg_strncasecmp(num, "+inf", 4) == 0)
  {
   val = get_float8_infinity();
   endptr = num + 4;
  }
  else if (pg_strncasecmp(num, "-inf", 4) == 0)
  {
   val = -get_float8_infinity();
   endptr = num + 4;
  }
  else if (save_errno == ERANGE)
  {
   if (val == 0.0 || val >= HUGE_VAL || val <= -HUGE_VAL)
   {
    char *errnumber = pstrdup(num);

    errnumber[endptr - num] = '\0';
    RETURN_ERROR(ereport(ERROR,
          (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
           errmsg("\"%s\" is out of range for type double precision",
            errnumber))),
        have_error);
   }
  }
  else
   RETURN_ERROR(ereport(ERROR,
         (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
          errmsg("invalid input syntax for type "
           "%s: \"%s\"",
           type_name, orig_string))),
       have_error);
 }
 while (*endptr != '\0' && isspace((unsigned char) *endptr))
  endptr++;


 if (endptr_p)
  *endptr_p = endptr;
 else if (*endptr != '\0')
  RETURN_ERROR(ereport(ERROR,
        (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
         errmsg("invalid input syntax for type "
          "%s: \"%s\"",
          type_name, orig_string))),
      have_error);

 return val;
}
