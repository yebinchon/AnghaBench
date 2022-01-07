
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQExpBuffer ;


 int free (char*) ;
 scalar_t__ get_hexdigit (int ,int*) ;
 int libpq_gettext (char*) ;
 char* malloc (scalar_t__) ;
 int printfPQExpBuffer (int ,int ,...) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *
conninfo_uri_decode(const char *str, PQExpBuffer errorMessage)
{
 char *buf;
 char *p;
 const char *q = str;

 buf = malloc(strlen(str) + 1);
 if (buf == ((void*)0))
 {
  printfPQExpBuffer(errorMessage, libpq_gettext("out of memory\n"));
  return ((void*)0);
 }
 p = buf;

 for (;;)
 {
  if (*q != '%')
  {

   if (!(*(p++) = *(q++)))
    break;
  }
  else
  {
   int hi;
   int lo;
   int c;

   ++q;





   if (!(get_hexdigit(*q++, &hi) && get_hexdigit(*q++, &lo)))
   {
    printfPQExpBuffer(errorMessage,
          libpq_gettext("invalid percent-encoded token: \"%s\"\n"),
          str);
    free(buf);
    return ((void*)0);
   }

   c = (hi << 4) | lo;
   if (c == 0)
   {
    printfPQExpBuffer(errorMessage,
          libpq_gettext("forbidden value %%00 in percent-encoded value: \"%s\"\n"),
          str);
    free(buf);
    return ((void*)0);
   }
   *(p++) = c;
  }
 }

 return buf;
}
