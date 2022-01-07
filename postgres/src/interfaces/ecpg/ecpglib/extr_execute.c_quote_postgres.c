
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ESCAPE_STRING_SYNTAX ;
 size_t PQescapeString (char*,char*,size_t) ;
 scalar_t__ ecpg_alloc (size_t,int) ;
 int ecpg_free (char*) ;
 int memmove (char*,char*,size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static char *
quote_postgres(char *arg, bool quote, int lineno)
{
 char *res;
 size_t length;
 size_t escaped_len;
 size_t buffer_len;





 if (!quote)
  return arg;
 else
 {
  length = strlen(arg);
  buffer_len = 2 * length + 1;
  res = (char *) ecpg_alloc(buffer_len + 3, lineno);
  if (!res)
   return res;
  escaped_len = PQescapeString(res + 1, arg, buffer_len);
  if (length == escaped_len)
  {
   res[0] = res[escaped_len + 1] = '\'';
   res[escaped_len + 2] = '\0';
  }
  else
  {




   memmove(res + 2, res + 1, escaped_len);
   res[0] = ESCAPE_STRING_SYNTAX;
   res[1] = res[escaped_len + 2] = '\'';
   res[escaped_len + 3] = '\0';
  }
  ecpg_free(arg);
  return res;
 }
}
