
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQExpBuffer ;


 int appendPQExpBufferChar (int ,char const) ;
 int appendPQExpBufferStr (int ,char const*) ;

void
appendConnStrVal(PQExpBuffer buf, const char *str)
{
 const char *s;
 bool needquotes;





 needquotes = 1;
 for (s = str; *s; s++)
 {
  if (!((*s >= 'a' && *s <= 'z') || (*s >= 'A' && *s <= 'Z') ||
     (*s >= '0' && *s <= '9') || *s == '_' || *s == '.'))
  {
   needquotes = 1;
   break;
  }
  needquotes = 0;
 }

 if (needquotes)
 {
  appendPQExpBufferChar(buf, '\'');
  while (*str)
  {

   if (*str == '\'' || *str == '\\')
    appendPQExpBufferChar(buf, '\\');

   appendPQExpBufferChar(buf, *str);
   str++;
  }
  appendPQExpBufferChar(buf, '\'');
 }
 else
  appendPQExpBufferStr(buf, str);
}
