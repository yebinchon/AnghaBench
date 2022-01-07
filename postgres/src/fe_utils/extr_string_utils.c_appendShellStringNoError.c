
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQExpBuffer ;


 int appendPQExpBufferChar (int ,char const) ;
 int appendPQExpBufferStr (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strspn (char const*,char*) ;

bool
appendShellStringNoError(PQExpBuffer buf, const char *str)
{



 bool ok = 1;
 const char *p;





 if (*str != '\0' &&
  strspn(str, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_./:") == strlen(str))
 {
  appendPQExpBufferStr(buf, str);
  return ok;
 }


 appendPQExpBufferChar(buf, '\'');
 for (p = str; *p; p++)
 {
  if (*p == '\n' || *p == '\r')
  {
   ok = 0;
   continue;
  }

  if (*p == '\'')
   appendPQExpBufferStr(buf, "'\"'\"'");
  else
   appendPQExpBufferChar(buf, *p);
 }
 appendPQExpBufferChar(buf, '\'');
 return ok;
}
