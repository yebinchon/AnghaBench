
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,char const*) ;
 scalar_t__ errno ;
 scalar_t__ isspace (unsigned char) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static Oid
oidin_subr(const char *s, char **endloc)
{
 unsigned long cvt;
 char *endptr;
 Oid result;

 if (*s == '\0')
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("invalid input syntax for type %s: \"%s\"",
      "oid", s)));

 errno = 0;
 cvt = strtoul(s, &endptr, 10);






 if (errno && errno != ERANGE && errno != EINVAL)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("invalid input syntax for type %s: \"%s\"",
      "oid", s)));

 if (endptr == s && *s != '\0')
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("invalid input syntax for type %s: \"%s\"",
      "oid", s)));

 if (errno == ERANGE)
  ereport(ERROR,
    (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
     errmsg("value \"%s\" is out of range for type %s",
      s, "oid")));

 if (endloc)
 {

  *endloc = endptr;
 }
 else
 {

  while (*endptr && isspace((unsigned char) *endptr))
   endptr++;
  if (*endptr)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("invalid input syntax for type %s: \"%s\"",
       "oid", s)));
 }

 result = (Oid) cvt;
 return result;
}
