
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Oid ;
typedef int List ;


 int Assert (int) ;
 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERRCODE_TOO_MANY_ARGUMENTS ;
 int ERROR ;
 int FUNC_MAX_ARGS ;
 int InvalidOid ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int parseTypeString (char*,int *,int*,int) ;
 int pfree (char*) ;
 scalar_t__ pg_strcasecmp (char*,char*) ;
 char* pstrdup (char const*) ;
 scalar_t__ scanner_isspace (char) ;
 int * stringToQualifiedNameList (char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
parseNameAndArgTypes(const char *string, bool allowNone, List **names,
      int *nargs, Oid *argtypes)
{
 char *rawname;
 char *ptr;
 char *ptr2;
 char *typename;
 bool in_quote;
 bool had_comma;
 int paren_count;
 Oid typeid;
 int32 typmod;


 rawname = pstrdup(string);


 in_quote = 0;
 for (ptr = rawname; *ptr; ptr++)
 {
  if (*ptr == '"')
   in_quote = !in_quote;
  else if (*ptr == '(' && !in_quote)
   break;
 }
 if (*ptr == '\0')
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("expected a left parenthesis")));


 *ptr++ = '\0';
 *names = stringToQualifiedNameList(rawname);


 ptr2 = ptr + strlen(ptr);
 while (--ptr2 > ptr)
 {
  if (!scanner_isspace(*ptr2))
   break;
 }
 if (*ptr2 != ')')
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("expected a right parenthesis")));

 *ptr2 = '\0';


 *nargs = 0;
 had_comma = 0;

 for (;;)
 {

  while (scanner_isspace(*ptr))
   ptr++;
  if (*ptr == '\0')
  {

   if (had_comma)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
       errmsg("expected a type name")));
   break;
  }
  typename = ptr;


  in_quote = 0;
  paren_count = 0;
  for (; *ptr; ptr++)
  {
   if (*ptr == '"')
    in_quote = !in_quote;
   else if (*ptr == ',' && !in_quote && paren_count == 0)
    break;
   else if (!in_quote)
   {
    switch (*ptr)
    {
     case '(':
     case '[':
      paren_count++;
      break;
     case ')':
     case ']':
      paren_count--;
      break;
    }
   }
  }
  if (in_quote || paren_count != 0)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("improper type name")));

  ptr2 = ptr;
  if (*ptr == ',')
  {
   had_comma = 1;
   *ptr++ = '\0';
  }
  else
  {
   had_comma = 0;
   Assert(*ptr == '\0');
  }

  while (--ptr2 >= typename)
  {
   if (!scanner_isspace(*ptr2))
    break;
   *ptr2 = '\0';
  }

  if (allowNone && pg_strcasecmp(typename, "none") == 0)
  {

   typeid = InvalidOid;
   typmod = -1;
  }
  else
  {

   parseTypeString(typename, &typeid, &typmod, 0);
  }
  if (*nargs >= FUNC_MAX_ARGS)
   ereport(ERROR,
     (errcode(ERRCODE_TOO_MANY_ARGUMENTS),
      errmsg("too many arguments")));

  argtypes[*nargs] = typeid;
  (*nargs)++;
 }

 pfree(rawname);
}
