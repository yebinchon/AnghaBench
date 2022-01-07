
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int ERRCODE_CONFIG_FILE_ERROR ;
 int ereport (int,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 scalar_t__ pg_isblank (int) ;

__attribute__((used)) static bool
next_token(char **lineptr, char *buf, int bufsz,
     bool *initial_quote, bool *terminating_comma,
     int elevel, char **err_msg)
{
 int c;
 char *start_buf = buf;
 char *end_buf = buf + (bufsz - 1);
 bool in_quote = 0;
 bool was_quote = 0;
 bool saw_quote = 0;

 Assert(end_buf > start_buf);

 *initial_quote = 0;
 *terminating_comma = 0;


 while ((c = (*(*lineptr)++)) != '\0' && (pg_isblank(c) || c == ','))
  ;





 while (c != '\0' &&
     (!pg_isblank(c) || in_quote))
 {

  if (c == '#' && !in_quote)
  {
   while ((c = (*(*lineptr)++)) != '\0')
    ;
   break;
  }

  if (buf >= end_buf)
  {
   *buf = '\0';
   ereport(elevel,
     (errcode(ERRCODE_CONFIG_FILE_ERROR),
      errmsg("authentication file token too long, skipping: \"%s\"",
       start_buf)));
   *err_msg = "authentication file token too long";

   while ((c = (*(*lineptr)++)) != '\0')
    ;

   (*lineptr)--;
   return 0;
  }


  if (c == ',' && !in_quote)
  {
   *terminating_comma = 1;
   break;
  }

  if (c != '"' || was_quote)
   *buf++ = c;


  if (in_quote && c == '"')
   was_quote = !was_quote;
  else
   was_quote = 0;

  if (c == '"')
  {
   in_quote = !in_quote;
   saw_quote = 1;
   if (buf == start_buf)
    *initial_quote = 1;
  }

  c = *(*lineptr)++;
 }





 (*lineptr)--;

 *buf = '\0';

 return (saw_quote || buf > start_buf);
}
