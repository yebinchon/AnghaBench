
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* ScanKeywordCategories ;
 int ScanKeywordLookup (char const*,int *) ;
 int ScanKeywords ;
 scalar_t__ UNRESERVED_KEYWORD ;
 scalar_t__ palloc (scalar_t__) ;
 scalar_t__ quote_all_identifiers ;
 scalar_t__ strlen (char const*) ;

const char *
quote_identifier(const char *ident)
{





 int nquotes = 0;
 bool safe;
 const char *ptr;
 char *result;
 char *optr;





 safe = ((ident[0] >= 'a' && ident[0] <= 'z') || ident[0] == '_');

 for (ptr = ident; *ptr; ptr++)
 {
  char ch = *ptr;

  if ((ch >= 'a' && ch <= 'z') ||
   (ch >= '0' && ch <= '9') ||
   (ch == '_'))
  {

  }
  else
  {
   safe = 0;
   if (ch == '"')
    nquotes++;
  }
 }

 if (quote_all_identifiers)
  safe = 0;

 if (safe)
 {
  int kwnum = ScanKeywordLookup(ident, &ScanKeywords);

  if (kwnum >= 0 && ScanKeywordCategories[kwnum] != UNRESERVED_KEYWORD)
   safe = 0;
 }

 if (safe)
  return ident;

 result = (char *) palloc(strlen(ident) + nquotes + 2 + 1);

 optr = result;
 *optr++ = '"';
 for (ptr = ident; *ptr; ptr++)
 {
  char ch = *ptr;

  if (ch == '"')
   *optr++ = '"';
  *optr++ = ch;
 }
 *optr++ = '"';
 *optr = '\0';

 return result;
}
