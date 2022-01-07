
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int ERRCODE_NAME_TOO_LONG ;
 int ERROR ;
 int NAMEDATALEN ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int) ;
 int errmsg (char*) ;
 scalar_t__ isalnum (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static const char *
getid(const char *s, char *n)
{
 int len = 0;
 bool in_quotes = 0;

 Assert(s && n);

 while (isspace((unsigned char) *s))
  s++;

 for (;
   *s != '\0' &&
   (isalnum((unsigned char) *s) ||
    *s == '_' ||
    *s == '"' ||
    in_quotes);
   s++)
 {
  if (*s == '"')
  {

   if (*(s + 1) != '"')
   {
    in_quotes = !in_quotes;
    continue;
   }

   s++;
  }


  if (len >= NAMEDATALEN - 1)
   ereport(ERROR,
     (errcode(ERRCODE_NAME_TOO_LONG),
      errmsg("identifier too long"),
      errdetail("Identifier must be less than %d characters.",
          NAMEDATALEN)));

  n[len++] = *s;
 }
 n[len] = '\0';
 while (isspace((unsigned char) *s))
  s++;
 return s;
}
