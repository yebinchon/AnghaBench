
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;


 int DELIM ;
 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 char LDELIM ;
 int RDELIM ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,char const*) ;
 int float8in_internal (char*,char**,char const*,char const*) ;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static void
pair_decode(char *str, float8 *x, float8 *y, char **endptr_p,
   const char *type_name, const char *orig_string)
{
 bool has_delim;

 while (isspace((unsigned char) *str))
  str++;
 if ((has_delim = (*str == LDELIM)))
  str++;

 *x = float8in_internal(str, &str, type_name, orig_string);

 if (*str++ != DELIM)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("invalid input syntax for type %s: \"%s\"",
      type_name, orig_string)));

 *y = float8in_internal(str, &str, type_name, orig_string);

 if (has_delim)
 {
  if (*str++ != RDELIM)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("invalid input syntax for type %s: \"%s\"",
       type_name, orig_string)));
  while (isspace((unsigned char) *str))
   str++;
 }


 if (endptr_p)
  *endptr_p = str;
 else if (*str != '\0')
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("invalid input syntax for type %s: \"%s\"",
      type_name, orig_string)));
}
