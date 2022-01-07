
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 char* pstrdup (char const*) ;
 int strlen (char*) ;

__attribute__((used)) static char *
strip_trailing_ws(const char *msg)
{
 char *res = pstrdup(msg);
 int len = strlen(res);

 while (len > 0 && isspace((unsigned char) res[len - 1]))
  res[--len] = '\0';
 return res;
}
