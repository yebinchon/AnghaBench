
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* escape_quotes (char const*) ;
 int free (char*) ;
 scalar_t__ pg_malloc (scalar_t__) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *
escape_quotes_bki(const char *src)
{
 char *result;
 char *data = escape_quotes(src);
 char *resultp;
 char *datap;
 int nquotes = 0;


 datap = data;
 while ((datap = strchr(datap, '"')) != ((void*)0))
 {
  nquotes++;
  datap++;
 }

 result = (char *) pg_malloc(strlen(data) + 3 + nquotes * 3);
 resultp = result;
 *resultp++ = '"';
 for (datap = data; *datap; datap++)
 {
  if (*datap == '"')
  {
   strcpy(resultp, "\\042");
   resultp += 4;
  }
  else
   *resultp++ = *datap;
 }
 *resultp++ = '"';
 *resultp = '\0';

 free(data);
 return result;
}
