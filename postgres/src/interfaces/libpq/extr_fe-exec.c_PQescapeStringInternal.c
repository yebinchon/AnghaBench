
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errorMessage; } ;
typedef TYPE_1__ PGconn ;


 int IS_HIGHBIT_SET (char) ;
 scalar_t__ SQL_STR_DOUBLE (char,int) ;
 int libpq_gettext (char*) ;
 int pg_encoding_mblen (int,char const*) ;
 int printfPQExpBuffer (int *,int ) ;

__attribute__((used)) static size_t
PQescapeStringInternal(PGconn *conn,
        char *to, const char *from, size_t length,
        int *error,
        int encoding, bool std_strings)
{
 const char *source = from;
 char *target = to;
 size_t remaining = length;

 if (error)
  *error = 0;

 while (remaining > 0 && *source != '\0')
 {
  char c = *source;
  int len;
  int i;


  if (!IS_HIGHBIT_SET(c))
  {

   if (SQL_STR_DOUBLE(c, !std_strings))
    *target++ = c;

   *target++ = c;
   source++;
   remaining--;
   continue;
  }


  len = pg_encoding_mblen(encoding, source);


  for (i = 0; i < len; i++)
  {
   if (remaining == 0 || *source == '\0')
    break;
   *target++ = *source++;
   remaining--;
  }
  if (i < len)
  {
   if (error)
    *error = 1;
   if (conn)
    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("incomplete multibyte character\n"));
   for (; i < len; i++)
   {
    if (((size_t) (target - to)) / 2 >= length)
     break;
    *target++ = ' ';
   }
   break;
  }
 }


 *target = '\0';

 return target - to;
}
