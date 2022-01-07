
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 char RANGE_EMPTY ;
 int RANGE_EMPTY_LITERAL ;
 char RANGE_LB_INC ;
 char RANGE_LB_INF ;
 char RANGE_UB_INC ;
 char RANGE_UB_INF ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,char const*) ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ pg_strncasecmp (char const*,int ,int ) ;
 char* range_parse_bound (char const*,char const*,char**,int*) ;
 int strlen (int ) ;

__attribute__((used)) static void
range_parse(const char *string, char *flags, char **lbound_str,
   char **ubound_str)
{
 const char *ptr = string;
 bool infinite;

 *flags = 0;


 while (*ptr != '\0' && isspace((unsigned char) *ptr))
  ptr++;


 if (pg_strncasecmp(ptr, RANGE_EMPTY_LITERAL,
        strlen(RANGE_EMPTY_LITERAL)) == 0)
 {
  *flags = RANGE_EMPTY;
  *lbound_str = ((void*)0);
  *ubound_str = ((void*)0);

  ptr += strlen(RANGE_EMPTY_LITERAL);


  while (*ptr != '\0' && isspace((unsigned char) *ptr))
   ptr++;


  if (*ptr != '\0')
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("malformed range literal: \"%s\"",
       string),
      errdetail("Junk after \"empty\" key word.")));

  return;
 }

 if (*ptr == '[')
 {
  *flags |= RANGE_LB_INC;
  ptr++;
 }
 else if (*ptr == '(')
  ptr++;
 else
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("malformed range literal: \"%s\"",
      string),
     errdetail("Missing left parenthesis or bracket.")));

 ptr = range_parse_bound(string, ptr, lbound_str, &infinite);
 if (infinite)
  *flags |= RANGE_LB_INF;

 if (*ptr == ',')
  ptr++;
 else
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("malformed range literal: \"%s\"",
      string),
     errdetail("Missing comma after lower bound.")));

 ptr = range_parse_bound(string, ptr, ubound_str, &infinite);
 if (infinite)
  *flags |= RANGE_UB_INF;

 if (*ptr == ']')
 {
  *flags |= RANGE_UB_INC;
  ptr++;
 }
 else if (*ptr == ')')
  ptr++;
 else
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("malformed range literal: \"%s\"",
      string),
     errdetail("Too many commas.")));


 while (*ptr != '\0' && isspace((unsigned char) *ptr))
  ptr++;

 if (*ptr != '\0')
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("malformed range literal: \"%s\"",
      string),
     errdetail("Junk after right parenthesis or bracket.")));
}
