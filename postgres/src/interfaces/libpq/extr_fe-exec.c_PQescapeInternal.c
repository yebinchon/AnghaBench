
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int client_encoding; int errorMessage; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ IS_HIGHBIT_SET (char const) ;
 int libpq_gettext (char*) ;
 scalar_t__ malloc (int) ;
 int * memchr (char const*,int ,int) ;
 int memcpy (char*,char const*,int) ;
 int pg_encoding_mblen (int ,char const*) ;
 int printfPQExpBuffer (int *,int ) ;

__attribute__((used)) static char *
PQescapeInternal(PGconn *conn, const char *str, size_t len, bool as_ident)
{
 const char *s;
 char *result;
 char *rp;
 int num_quotes = 0;
 int num_backslashes = 0;
 int input_len;
 int result_size;
 char quote_char = as_ident ? '"' : '\'';


 if (!conn)
  return ((void*)0);


 for (s = str; (s - str) < len && *s != '\0'; ++s)
 {
  if (*s == quote_char)
   ++num_quotes;
  else if (*s == '\\')
   ++num_backslashes;
  else if (IS_HIGHBIT_SET(*s))
  {
   int charlen;


   charlen = pg_encoding_mblen(conn->client_encoding, s);


   if ((s - str) + charlen > len || memchr(s, 0, charlen) != ((void*)0))
   {
    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("incomplete multibyte character\n"));
    return ((void*)0);
   }


   s += charlen - 1;
  }
 }


 input_len = s - str;
 result_size = input_len + num_quotes + 3;
 if (!as_ident && num_backslashes > 0)
  result_size += num_backslashes + 2;
 result = rp = (char *) malloc(result_size);
 if (rp == ((void*)0))
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("out of memory\n"));
  return ((void*)0);
 }
 if (!as_ident && num_backslashes > 0)
 {
  *rp++ = ' ';
  *rp++ = 'E';
 }


 *rp++ = quote_char;
 if (num_quotes == 0 && (num_backslashes == 0 || as_ident))
 {
  memcpy(rp, str, input_len);
  rp += input_len;
 }
 else
 {
  for (s = str; s - str < input_len; ++s)
  {
   if (*s == quote_char || (!as_ident && *s == '\\'))
   {
    *rp++ = *s;
    *rp++ = *s;
   }
   else if (!IS_HIGHBIT_SET(*s))
    *rp++ = *s;
   else
   {
    int i = pg_encoding_mblen(conn->client_encoding, s);

    while (1)
    {
     *rp++ = *s;
     if (--i == 0)
      break;
     ++s;
    }
   }
  }
 }


 *rp++ = quote_char;
 *rp = '\0';

 return result;
}
