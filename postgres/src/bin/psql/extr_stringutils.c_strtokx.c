
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PQmblen (char*,int) ;
 int free (char*) ;
 int memmove (char*,char*,int) ;
 char* pg_malloc (int) ;
 scalar_t__ strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 unsigned int strcspn (char*,char const*) ;
 int strip_quotes (char*,char,char,int) ;
 int strlen (char const*) ;
 unsigned int strspn (char*,char const*) ;

char *
strtokx(const char *s,
  const char *whitespace,
  const char *delim,
  const char *quote,
  char escape,
  bool e_strings,
  bool del_quotes,
  int encoding)
{
 static char *storage = ((void*)0);

 static char *string = ((void*)0);



 unsigned int offset;
 char *start;
 char *p;

 if (s)
 {
  free(storage);






  storage = pg_malloc(2 * strlen(s) + 1);
  strcpy(storage, s);
  string = storage;
 }

 if (!storage)
  return ((void*)0);


 offset = strspn(string, whitespace);
 start = &string[offset];


 if (*start == '\0')
 {

  free(storage);
  storage = ((void*)0);
  string = ((void*)0);
  return ((void*)0);
 }


 if (delim && strchr(delim, *start))
 {







  p = start + 1;
  if (*p != '\0')
  {
   if (!strchr(whitespace, *p))
    memmove(p + 1, p, strlen(p) + 1);
   *p = '\0';
   string = p + 1;
  }
  else
  {

   string = p;
  }

  return start;
 }


 p = start;
 if (e_strings &&
  (*p == 'E' || *p == 'e') &&
  p[1] == '\'')
 {
  quote = "'";
  escape = '\\';
  p++;
 }


 if (quote && strchr(quote, *p))
 {

  char thisquote = *p++;

  for (; *p; p += PQmblen(p, encoding))
  {
   if (*p == escape && p[1] != '\0')
    p++;
   else if (*p == thisquote && p[1] == thisquote)
    p++;
   else if (*p == thisquote)
   {
    p++;
    break;
   }
  }





  if (*p != '\0')
  {
   if (!strchr(whitespace, *p))
    memmove(p + 1, p, strlen(p) + 1);
   *p = '\0';
   string = p + 1;
  }
  else
  {

   string = p;
  }


  if (del_quotes)
   strip_quotes(start, thisquote, escape, encoding);

  return start;
 }






 offset = strcspn(start, whitespace);

 if (delim)
 {
  unsigned int offset2 = strcspn(start, delim);

  if (offset > offset2)
   offset = offset2;
 }

 if (quote)
 {
  unsigned int offset2 = strcspn(start, quote);

  if (offset > offset2)
   offset = offset2;
 }

 p = start + offset;





 if (*p != '\0')
 {
  if (!strchr(whitespace, *p))
   memmove(p + 1, p, strlen(p) + 1);
  *p = '\0';
  string = p + 1;
 }
 else
 {

  string = p;
 }

 return start;
}
