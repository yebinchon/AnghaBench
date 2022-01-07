
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
pwdfMatchesString(char *buf, const char *token)
{
 char *tbuf;
 const char *ttok;
 bool bslash = 0;

 if (buf == ((void*)0) || token == ((void*)0))
  return ((void*)0);
 tbuf = buf;
 ttok = token;
 if (tbuf[0] == '*' && tbuf[1] == ':')
  return tbuf + 2;
 while (*tbuf != 0)
 {
  if (*tbuf == '\\' && !bslash)
  {
   tbuf++;
   bslash = 1;
  }
  if (*tbuf == ':' && *ttok == 0 && !bslash)
   return tbuf + 1;
  bslash = 0;
  if (*ttok == 0)
   return ((void*)0);
  if (*tbuf == *ttok)
  {
   tbuf++;
   ttok++;
  }
  else
   return ((void*)0);
 }
 return ((void*)0);
}
