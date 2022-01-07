
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; int len; int maxlen; } ;
typedef TYPE_1__* PQExpBuffer ;


 int IS_HIGHBIT_SET (char) ;
 int PQmblen (char const*,int) ;
 scalar_t__ SQL_STR_DOUBLE (char,int) ;
 int enlargePQExpBuffer (TYPE_1__*,int) ;
 size_t strlen (char const*) ;

void
appendStringLiteral(PQExpBuffer buf, const char *str,
     int encoding, bool std_strings)
{
 size_t length = strlen(str);
 const char *source = str;
 char *target;

 if (!enlargePQExpBuffer(buf, 2 * length + 2))
  return;

 target = buf->data + buf->len;
 *target++ = '\'';

 while (*source != '\0')
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
   continue;
  }


  len = PQmblen(source, encoding);


  for (i = 0; i < len; i++)
  {
   if (*source == '\0')
    break;
   *target++ = *source++;
  }
  if (i < len)
  {
   char *stop = buf->data + buf->maxlen - 2;

   for (; i < len; i++)
   {
    if (target >= stop)
     break;
    *target++ = ' ';
   }
   break;
  }
 }


 *target++ = '\'';
 *target = '\0';

 buf->len = target - buf->data;
}
